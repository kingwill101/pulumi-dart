// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_govcloud_integrations_alb.dart';
import 'aws_govcloud_integrations_api_gateway.dart';
import 'aws_govcloud_integrations_auto_scaling.dart';
import 'aws_govcloud_integrations_aws_direct_connect.dart';
import 'aws_govcloud_integrations_aws_states.dart';
import 'aws_govcloud_integrations_cloudtrail.dart';
import 'aws_govcloud_integrations_dynamo_db.dart';
import 'aws_govcloud_integrations_ebs.dart';
import 'aws_govcloud_integrations_ec2.dart';
import 'aws_govcloud_integrations_elastic_search.dart';
import 'aws_govcloud_integrations_elb.dart';
import 'aws_govcloud_integrations_emr.dart';
import 'aws_govcloud_integrations_iam.dart';
import 'aws_govcloud_integrations_lambda.dart';
import 'aws_govcloud_integrations_rds.dart';
import 'aws_govcloud_integrations_red_shift.dart';
import 'aws_govcloud_integrations_route53.dart';
import 'aws_govcloud_integrations_s3.dart';
import 'aws_govcloud_integrations_sns.dart';
import 'aws_govcloud_integrations_sqs.dart';

/// {@template pulumi_cloud_aws_govcloud_integrations_aws_govcloud_integrations_args_doc}
/// The set of arguments for AwsGovcloudIntegrations.
/// {@endtemplate}
/// {@macro pulumi_cloud_aws_govcloud_integrations_aws_govcloud_integrations_args_doc}
class AwsGovcloudIntegrationsArgs {
  /// The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// Application load balancer AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsAlb>? alb;
  /// Api Gateway AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsApiGateway>? apiGateway;
  /// Autoscaling AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsAutoScaling>? autoScaling;
  /// Aws Direct Connect AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsAwsDirectConnect>? awsDirectConnect;
  /// Aws States AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsAwsStates>? awsStates;
  /// Cloudtrail AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsCloudtrail>? cloudtrail;
  /// Dynamo DB AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsDynamoDb>? dynamoDb;
  /// Elastic Beanstalk AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsEbs>? ebs;
  /// EC2 AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsEc2>? ec2;
  /// Elastic search AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsElasticSearch>? elasticSearch;
  /// Elb AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsElb>? elb;
  /// Emr AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsEmr>? emr;
  /// IAM AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsIam>? iam;
  /// Lambda AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsLambda>? lambda;
  /// The access key of the AwsGovCloud.
  final pulumi.Input<String> linkedAccountId;
  /// RDS AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsRds>? rds;
  /// Redshift AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsRedShift>? redShift;
  /// Route53 AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsRoute53>? route53;
  /// The s3 integration
  final pulumi.Input<AwsGovcloudIntegrationsS3>? s3;
  /// SNS AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsSns>? sns;
  /// SQS AwsGovCloud integration.See Integration blocks below for details.
  final pulumi.Input<AwsGovcloudIntegrationsSqs>? sqs;

  /// Creates a new [AwsGovcloudIntegrationsArgs].
  /// [accountId] The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [alb] Application load balancer AwsGovCloud integration.See Integration blocks below for details.
  /// [apiGateway] Api Gateway AwsGovCloud integration.See Integration blocks below for details.
  /// [autoScaling] Autoscaling AwsGovCloud integration.See Integration blocks below for details.
  /// [awsDirectConnect] Aws Direct Connect AwsGovCloud integration.See Integration blocks below for details.
  /// [awsStates] Aws States AwsGovCloud integration.See Integration blocks below for details.
  /// [cloudtrail] Cloudtrail AwsGovCloud integration.See Integration blocks below for details.
  /// [dynamoDb] Dynamo DB AwsGovCloud integration.See Integration blocks below for details.
  /// [ebs] Elastic Beanstalk AwsGovCloud integration.See Integration blocks below for details.
  /// [ec2] EC2 AwsGovCloud integration.See Integration blocks below for details.
  /// [elasticSearch] Elastic search AwsGovCloud integration.See Integration blocks below for details.
  /// [elb] Elb AwsGovCloud integration.See Integration blocks below for details.
  /// [emr] Emr AwsGovCloud integration.See Integration blocks below for details.
  /// [iam] IAM AwsGovCloud integration.See Integration blocks below for details.
  /// [lambda] Lambda AwsGovCloud integration.See Integration blocks below for details.
  /// [linkedAccountId] The access key of the AwsGovCloud.
  /// [rds] RDS AwsGovCloud integration.See Integration blocks below for details.
  /// [redShift] Redshift AwsGovCloud integration.See Integration blocks below for details.
  /// [route53] Route53 AwsGovCloud integration.See Integration blocks below for details.
  /// [s3] The s3 integration
  /// [sns] SNS AwsGovCloud integration.See Integration blocks below for details.
  /// [sqs] SQS AwsGovCloud integration.See Integration blocks below for details.
  AwsGovcloudIntegrationsArgs({
    String? accountId,
    AwsGovcloudIntegrationsAlb? alb,
    AwsGovcloudIntegrationsApiGateway? apiGateway,
    AwsGovcloudIntegrationsAutoScaling? autoScaling,
    AwsGovcloudIntegrationsAwsDirectConnect? awsDirectConnect,
    AwsGovcloudIntegrationsAwsStates? awsStates,
    AwsGovcloudIntegrationsCloudtrail? cloudtrail,
    AwsGovcloudIntegrationsDynamoDb? dynamoDb,
    AwsGovcloudIntegrationsEbs? ebs,
    AwsGovcloudIntegrationsEc2? ec2,
    AwsGovcloudIntegrationsElasticSearch? elasticSearch,
    AwsGovcloudIntegrationsElb? elb,
    AwsGovcloudIntegrationsEmr? emr,
    AwsGovcloudIntegrationsIam? iam,
    AwsGovcloudIntegrationsLambda? lambda,
    required String linkedAccountId,
    AwsGovcloudIntegrationsRds? rds,
    AwsGovcloudIntegrationsRedShift? redShift,
    AwsGovcloudIntegrationsRoute53? route53,
    AwsGovcloudIntegrationsS3? s3,
    AwsGovcloudIntegrationsSns? sns,
    AwsGovcloudIntegrationsSqs? sqs,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      alb = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsAlb>(alb),
      apiGateway = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsApiGateway>(apiGateway),
      autoScaling = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsAutoScaling>(autoScaling),
      awsDirectConnect = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsAwsDirectConnect>(awsDirectConnect),
      awsStates = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsAwsStates>(awsStates),
      cloudtrail = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsCloudtrail>(cloudtrail),
      dynamoDb = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsDynamoDb>(dynamoDb),
      ebs = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsEbs>(ebs),
      ec2 = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsEc2>(ec2),
      elasticSearch = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsElasticSearch>(elasticSearch),
      elb = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsElb>(elb),
      emr = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsEmr>(emr),
      iam = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsIam>(iam),
      lambda = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsLambda>(lambda),
      linkedAccountId = pulumi.Input.asInput<String>(linkedAccountId),
      rds = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsRds>(rds),
      redShift = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsRedShift>(redShift),
      route53 = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsRoute53>(route53),
      s3 = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsS3>(s3),
      sns = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsSns>(sns),
      sqs = pulumi.Input.asOptionalInput<AwsGovcloudIntegrationsSqs>(sqs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alb': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsAlb, Map<String, dynamic>>(alb, (value) => value.toMap()),
      'apiGateway': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsApiGateway, Map<String, dynamic>>(apiGateway, (value) => value.toMap()),
      'autoScaling': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsAutoScaling, Map<String, dynamic>>(autoScaling, (value) => value.toMap()),
      'awsDirectConnect': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsAwsDirectConnect, Map<String, dynamic>>(awsDirectConnect, (value) => value.toMap()),
      'awsStates': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsAwsStates, Map<String, dynamic>>(awsStates, (value) => value.toMap()),
      'cloudtrail': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsCloudtrail, Map<String, dynamic>>(cloudtrail, (value) => value.toMap()),
      'dynamoDb': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsDynamoDb, Map<String, dynamic>>(dynamoDb, (value) => value.toMap()),
      'ebs': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsEbs, Map<String, dynamic>>(ebs, (value) => value.toMap()),
      'ec2': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsEc2, Map<String, dynamic>>(ec2, (value) => value.toMap()),
      'elasticSearch': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsElasticSearch, Map<String, dynamic>>(elasticSearch, (value) => value.toMap()),
      'elb': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsElb, Map<String, dynamic>>(elb, (value) => value.toMap()),
      'emr': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsEmr, Map<String, dynamic>>(emr, (value) => value.toMap()),
      'iam': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsIam, Map<String, dynamic>>(iam, (value) => value.toMap()),
      'lambda': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsLambda, Map<String, dynamic>>(lambda, (value) => value.toMap()),
      'linkedAccountId': linkedAccountId,
      'rds': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsRds, Map<String, dynamic>>(rds, (value) => value.toMap()),
      'redShift': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsRedShift, Map<String, dynamic>>(redShift, (value) => value.toMap()),
      'route53': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsRoute53, Map<String, dynamic>>(route53, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
      'sns': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsSns, Map<String, dynamic>>(sns, (value) => value.toMap()),
      'sqs': ?pulumi.Input.mapOptionalInputValue<AwsGovcloudIntegrationsSqs, Map<String, dynamic>>(sqs, (value) => value.toMap()),
    };
  }

  factory AwsGovcloudIntegrationsArgs.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudIntegrationsArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      alb: map['alb'] == null ? null : AwsGovcloudIntegrationsAlb.fromMap((map['alb'] as Map).cast<String, dynamic>()),
      apiGateway: map['apiGateway'] == null ? null : AwsGovcloudIntegrationsApiGateway.fromMap((map['apiGateway'] as Map).cast<String, dynamic>()),
      autoScaling: map['autoScaling'] == null ? null : AwsGovcloudIntegrationsAutoScaling.fromMap((map['autoScaling'] as Map).cast<String, dynamic>()),
      awsDirectConnect: map['awsDirectConnect'] == null ? null : AwsGovcloudIntegrationsAwsDirectConnect.fromMap((map['awsDirectConnect'] as Map).cast<String, dynamic>()),
      awsStates: map['awsStates'] == null ? null : AwsGovcloudIntegrationsAwsStates.fromMap((map['awsStates'] as Map).cast<String, dynamic>()),
      cloudtrail: map['cloudtrail'] == null ? null : AwsGovcloudIntegrationsCloudtrail.fromMap((map['cloudtrail'] as Map).cast<String, dynamic>()),
      dynamoDb: map['dynamoDb'] == null ? null : AwsGovcloudIntegrationsDynamoDb.fromMap((map['dynamoDb'] as Map).cast<String, dynamic>()),
      ebs: map['ebs'] == null ? null : AwsGovcloudIntegrationsEbs.fromMap((map['ebs'] as Map).cast<String, dynamic>()),
      ec2: map['ec2'] == null ? null : AwsGovcloudIntegrationsEc2.fromMap((map['ec2'] as Map).cast<String, dynamic>()),
      elasticSearch: map['elasticSearch'] == null ? null : AwsGovcloudIntegrationsElasticSearch.fromMap((map['elasticSearch'] as Map).cast<String, dynamic>()),
      elb: map['elb'] == null ? null : AwsGovcloudIntegrationsElb.fromMap((map['elb'] as Map).cast<String, dynamic>()),
      emr: map['emr'] == null ? null : AwsGovcloudIntegrationsEmr.fromMap((map['emr'] as Map).cast<String, dynamic>()),
      iam: map['iam'] == null ? null : AwsGovcloudIntegrationsIam.fromMap((map['iam'] as Map).cast<String, dynamic>()),
      lambda: map['lambda'] == null ? null : AwsGovcloudIntegrationsLambda.fromMap((map['lambda'] as Map).cast<String, dynamic>()),
      linkedAccountId: map['linkedAccountId'] as String,
      rds: map['rds'] == null ? null : AwsGovcloudIntegrationsRds.fromMap((map['rds'] as Map).cast<String, dynamic>()),
      redShift: map['redShift'] == null ? null : AwsGovcloudIntegrationsRedShift.fromMap((map['redShift'] as Map).cast<String, dynamic>()),
      route53: map['route53'] == null ? null : AwsGovcloudIntegrationsRoute53.fromMap((map['route53'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null ? null : AwsGovcloudIntegrationsS3.fromMap((map['s3'] as Map).cast<String, dynamic>()),
      sns: map['sns'] == null ? null : AwsGovcloudIntegrationsSns.fromMap((map['sns'] as Map).cast<String, dynamic>()),
      sqs: map['sqs'] == null ? null : AwsGovcloudIntegrationsSqs.fromMap((map['sqs'] as Map).cast<String, dynamic>()),
    );
  }
}

