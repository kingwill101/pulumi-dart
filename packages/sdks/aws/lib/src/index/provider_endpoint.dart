// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderEndpoint {
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? accessanalyzer;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? account;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? acm;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? acmpca;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? amg;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? amp;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? amplify;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? apigateway;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? apigatewayv2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? appautoscaling;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? appconfig;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? appfabric;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? appflow;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? appintegrations;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? appintegrationsservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? applicationautoscaling;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? applicationinsights;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? applicationsignals;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? appmesh;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? appregistry;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? apprunner;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? appstream;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? appsync;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? arcregionswitch;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? arczonalshift;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? athena;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? auditmanager;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? autoscaling;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? autoscalingplans;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? backup;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? batch;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? bcmdataexports;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? beanstalk;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? bedrock;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? bedrockagent;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? bedrockagentcore;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? billing;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? budgets;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ce;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? chatbot;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? chime;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? chimesdkmediapipelines;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? chimesdkvoice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cleanrooms;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloud9;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudcontrol;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudcontrolapi;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudformation;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudfront;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudfrontkeyvaluestore;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudhsm;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudhsmv2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudsearch;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudtrail;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudwatch;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudwatchevents;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudwatchevidently;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudwatchlog;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudwatchlogs;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudwatchobservabilityaccessmanager;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cloudwatchrum;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codeartifact;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codebuild;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codecatalyst;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codecommit;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codeconnections;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codedeploy;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codeguruprofiler;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codegurureviewer;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codepipeline;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codestarconnections;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? codestarnotifications;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cognitoidentity;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cognitoidentityprovider;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cognitoidp;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? comprehend;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? computeoptimizer;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? config;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? configservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? connect;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? connectcases;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? controltower;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? costandusagereportservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? costexplorer;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? costoptimizationhub;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? cur;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? customerprofiles;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? databasemigration;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? databasemigrationservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? databrew;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? dataexchange;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? datapipeline;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? datasync;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? datazone;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? dax;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? deploy;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? detective;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? devicefarm;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? devopsguru;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? directconnect;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? directoryservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? dlm;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? dms;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? docdb;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? docdbelastic;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? drs;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ds;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? dsql;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? dynamodb;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ec2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ecr;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ecrpublic;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ecs;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? efs;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? eks;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? elasticache;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? elasticbeanstalk;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? elasticloadbalancing;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? elasticloadbalancingv2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? elasticsearch;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? elasticsearchservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? elastictranscoder;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? elb;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? elbv2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? emr;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? emrcontainers;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? emrserverless;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? es;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? eventbridge;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? events;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? evidently;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? evs;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? finspace;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? firehose;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? fis;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? fms;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? fsx;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? gamelift;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? glacier;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? globalaccelerator;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? glue;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? gluedatabrew;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? grafana;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? greengrass;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? groundstation;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? guardduty;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? healthlake;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? iam;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? identitystore;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? imagebuilder;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? inspector;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? inspector2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? inspectorv2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? internetmonitor;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? invoicing;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? iot;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ivs;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ivschat;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? kafka;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? kafkaconnect;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? kendra;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? keyspaces;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? kinesis;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? kinesisanalytics;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? kinesisanalyticsv2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? kinesisvideo;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? kms;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? lakeformation;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? lambda;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? launchwizard;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? lex;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? lexmodelbuilding;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? lexmodelbuildingservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? lexmodels;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? lexmodelsv2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? lexv2models;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? licensemanager;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? lightsail;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? location;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? locationservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? logs;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? m2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? macie2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? managedgrafana;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mediaconnect;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mediaconvert;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? medialive;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mediapackage;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mediapackagev2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mediapackagevod;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mediastore;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? memorydb;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mgn;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mpa;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mq;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? msk;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mwaa;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? mwaaserverless;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? neptune;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? neptunegraph;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? networkfirewall;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? networkflowmonitor;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? networkmanager;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? networkmonitor;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? notifications;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? notificationscontacts;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? oam;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? observabilityadmin;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? odb;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? opensearch;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? opensearchingestion;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? opensearchserverless;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? opensearchservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? organizations;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? osis;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? outposts;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? paymentcryptography;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? pcaconnectorad;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? pcs;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? pinpoint;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? pinpointsmsvoicev2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? pipes;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? polly;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? pricing;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? prometheus;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? prometheusservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? qbusiness;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? qldb;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? quicksight;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ram;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? rbin;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? rds;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? rdsdata;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? rdsdataservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? recyclebin;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? redshift;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? redshiftdata;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? redshiftdataapiservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? redshiftserverless;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? rekognition;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? resiliencehub;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? resourceexplorer2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? resourcegroups;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? resourcegroupstagging;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? resourcegroupstaggingapi;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? rolesanywhere;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? route53;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? route53domains;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? route53profiles;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? route53recoverycontrolconfig;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? route53recoveryreadiness;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? route53resolver;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? rum;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? s3;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? s3api;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? s3control;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? s3outposts;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? s3tables;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? s3vectors;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? sagemaker;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? savingsplans;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? scheduler;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? schemas;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? secretsmanager;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? securityhub;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? securitylake;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? serverlessapplicationrepository;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? serverlessapprepo;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? serverlessrepo;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? servicecatalog;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? servicecatalogappregistry;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? servicediscovery;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? servicequotas;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ses;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? sesv2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? sfn;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? shield;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? signer;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? sns;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? sqs;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ssm;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ssmcontacts;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ssmincidents;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ssmquicksetup;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ssmsap;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? sso;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? ssoadmin;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? stepfunctions;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? storagegateway;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? sts;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? swf;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? synthetics;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? taxsettings;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? timestreaminfluxdb;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? timestreamquery;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? timestreamwrite;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? transcribe;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? transcribeservice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? transfer;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? verifiedpermissions;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? vpclattice;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? waf;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? wafregional;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? wafv2;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? wellarchitected;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? workmail;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? workspaces;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? workspacesweb;
  /// Use this to override the default service endpoint URL
  final pulumi.Input<String>? xray;

  /// Creates a new [ProviderEndpoint].
  /// [accessanalyzer] Use this to override the default service endpoint URL
  /// [account] Use this to override the default service endpoint URL
  /// [acm] Use this to override the default service endpoint URL
  /// [acmpca] Use this to override the default service endpoint URL
  /// [amg] Use this to override the default service endpoint URL
  /// [amp] Use this to override the default service endpoint URL
  /// [amplify] Use this to override the default service endpoint URL
  /// [apigateway] Use this to override the default service endpoint URL
  /// [apigatewayv2] Use this to override the default service endpoint URL
  /// [appautoscaling] Use this to override the default service endpoint URL
  /// [appconfig] Use this to override the default service endpoint URL
  /// [appfabric] Use this to override the default service endpoint URL
  /// [appflow] Use this to override the default service endpoint URL
  /// [appintegrations] Use this to override the default service endpoint URL
  /// [appintegrationsservice] Use this to override the default service endpoint URL
  /// [applicationautoscaling] Use this to override the default service endpoint URL
  /// [applicationinsights] Use this to override the default service endpoint URL
  /// [applicationsignals] Use this to override the default service endpoint URL
  /// [appmesh] Use this to override the default service endpoint URL
  /// [appregistry] Use this to override the default service endpoint URL
  /// [apprunner] Use this to override the default service endpoint URL
  /// [appstream] Use this to override the default service endpoint URL
  /// [appsync] Use this to override the default service endpoint URL
  /// [arcregionswitch] Use this to override the default service endpoint URL
  /// [arczonalshift] Use this to override the default service endpoint URL
  /// [athena] Use this to override the default service endpoint URL
  /// [auditmanager] Use this to override the default service endpoint URL
  /// [autoscaling] Use this to override the default service endpoint URL
  /// [autoscalingplans] Use this to override the default service endpoint URL
  /// [backup] Use this to override the default service endpoint URL
  /// [batch] Use this to override the default service endpoint URL
  /// [bcmdataexports] Use this to override the default service endpoint URL
  /// [beanstalk] Use this to override the default service endpoint URL
  /// [bedrock] Use this to override the default service endpoint URL
  /// [bedrockagent] Use this to override the default service endpoint URL
  /// [bedrockagentcore] Use this to override the default service endpoint URL
  /// [billing] Use this to override the default service endpoint URL
  /// [budgets] Use this to override the default service endpoint URL
  /// [ce] Use this to override the default service endpoint URL
  /// [chatbot] Use this to override the default service endpoint URL
  /// [chime] Use this to override the default service endpoint URL
  /// [chimesdkmediapipelines] Use this to override the default service endpoint URL
  /// [chimesdkvoice] Use this to override the default service endpoint URL
  /// [cleanrooms] Use this to override the default service endpoint URL
  /// [cloud9] Use this to override the default service endpoint URL
  /// [cloudcontrol] Use this to override the default service endpoint URL
  /// [cloudcontrolapi] Use this to override the default service endpoint URL
  /// [cloudformation] Use this to override the default service endpoint URL
  /// [cloudfront] Use this to override the default service endpoint URL
  /// [cloudfrontkeyvaluestore] Use this to override the default service endpoint URL
  /// [cloudhsm] Use this to override the default service endpoint URL
  /// [cloudhsmv2] Use this to override the default service endpoint URL
  /// [cloudsearch] Use this to override the default service endpoint URL
  /// [cloudtrail] Use this to override the default service endpoint URL
  /// [cloudwatch] Use this to override the default service endpoint URL
  /// [cloudwatchevents] Use this to override the default service endpoint URL
  /// [cloudwatchevidently] Use this to override the default service endpoint URL
  /// [cloudwatchlog] Use this to override the default service endpoint URL
  /// [cloudwatchlogs] Use this to override the default service endpoint URL
  /// [cloudwatchobservabilityaccessmanager] Use this to override the default service endpoint URL
  /// [cloudwatchrum] Use this to override the default service endpoint URL
  /// [codeartifact] Use this to override the default service endpoint URL
  /// [codebuild] Use this to override the default service endpoint URL
  /// [codecatalyst] Use this to override the default service endpoint URL
  /// [codecommit] Use this to override the default service endpoint URL
  /// [codeconnections] Use this to override the default service endpoint URL
  /// [codedeploy] Use this to override the default service endpoint URL
  /// [codeguruprofiler] Use this to override the default service endpoint URL
  /// [codegurureviewer] Use this to override the default service endpoint URL
  /// [codepipeline] Use this to override the default service endpoint URL
  /// [codestarconnections] Use this to override the default service endpoint URL
  /// [codestarnotifications] Use this to override the default service endpoint URL
  /// [cognitoidentity] Use this to override the default service endpoint URL
  /// [cognitoidentityprovider] Use this to override the default service endpoint URL
  /// [cognitoidp] Use this to override the default service endpoint URL
  /// [comprehend] Use this to override the default service endpoint URL
  /// [computeoptimizer] Use this to override the default service endpoint URL
  /// [config] Use this to override the default service endpoint URL
  /// [configservice] Use this to override the default service endpoint URL
  /// [connect] Use this to override the default service endpoint URL
  /// [connectcases] Use this to override the default service endpoint URL
  /// [controltower] Use this to override the default service endpoint URL
  /// [costandusagereportservice] Use this to override the default service endpoint URL
  /// [costexplorer] Use this to override the default service endpoint URL
  /// [costoptimizationhub] Use this to override the default service endpoint URL
  /// [cur] Use this to override the default service endpoint URL
  /// [customerprofiles] Use this to override the default service endpoint URL
  /// [databasemigration] Use this to override the default service endpoint URL
  /// [databasemigrationservice] Use this to override the default service endpoint URL
  /// [databrew] Use this to override the default service endpoint URL
  /// [dataexchange] Use this to override the default service endpoint URL
  /// [datapipeline] Use this to override the default service endpoint URL
  /// [datasync] Use this to override the default service endpoint URL
  /// [datazone] Use this to override the default service endpoint URL
  /// [dax] Use this to override the default service endpoint URL
  /// [deploy] Use this to override the default service endpoint URL
  /// [detective] Use this to override the default service endpoint URL
  /// [devicefarm] Use this to override the default service endpoint URL
  /// [devopsguru] Use this to override the default service endpoint URL
  /// [directconnect] Use this to override the default service endpoint URL
  /// [directoryservice] Use this to override the default service endpoint URL
  /// [dlm] Use this to override the default service endpoint URL
  /// [dms] Use this to override the default service endpoint URL
  /// [docdb] Use this to override the default service endpoint URL
  /// [docdbelastic] Use this to override the default service endpoint URL
  /// [drs] Use this to override the default service endpoint URL
  /// [ds] Use this to override the default service endpoint URL
  /// [dsql] Use this to override the default service endpoint URL
  /// [dynamodb] Use this to override the default service endpoint URL
  /// [ec2] Use this to override the default service endpoint URL
  /// [ecr] Use this to override the default service endpoint URL
  /// [ecrpublic] Use this to override the default service endpoint URL
  /// [ecs] Use this to override the default service endpoint URL
  /// [efs] Use this to override the default service endpoint URL
  /// [eks] Use this to override the default service endpoint URL
  /// [elasticache] Use this to override the default service endpoint URL
  /// [elasticbeanstalk] Use this to override the default service endpoint URL
  /// [elasticloadbalancing] Use this to override the default service endpoint URL
  /// [elasticloadbalancingv2] Use this to override the default service endpoint URL
  /// [elasticsearch] Use this to override the default service endpoint URL
  /// [elasticsearchservice] Use this to override the default service endpoint URL
  /// [elastictranscoder] Use this to override the default service endpoint URL
  /// [elb] Use this to override the default service endpoint URL
  /// [elbv2] Use this to override the default service endpoint URL
  /// [emr] Use this to override the default service endpoint URL
  /// [emrcontainers] Use this to override the default service endpoint URL
  /// [emrserverless] Use this to override the default service endpoint URL
  /// [es] Use this to override the default service endpoint URL
  /// [eventbridge] Use this to override the default service endpoint URL
  /// [events] Use this to override the default service endpoint URL
  /// [evidently] Use this to override the default service endpoint URL
  /// [evs] Use this to override the default service endpoint URL
  /// [finspace] Use this to override the default service endpoint URL
  /// [firehose] Use this to override the default service endpoint URL
  /// [fis] Use this to override the default service endpoint URL
  /// [fms] Use this to override the default service endpoint URL
  /// [fsx] Use this to override the default service endpoint URL
  /// [gamelift] Use this to override the default service endpoint URL
  /// [glacier] Use this to override the default service endpoint URL
  /// [globalaccelerator] Use this to override the default service endpoint URL
  /// [glue] Use this to override the default service endpoint URL
  /// [gluedatabrew] Use this to override the default service endpoint URL
  /// [grafana] Use this to override the default service endpoint URL
  /// [greengrass] Use this to override the default service endpoint URL
  /// [groundstation] Use this to override the default service endpoint URL
  /// [guardduty] Use this to override the default service endpoint URL
  /// [healthlake] Use this to override the default service endpoint URL
  /// [iam] Use this to override the default service endpoint URL
  /// [identitystore] Use this to override the default service endpoint URL
  /// [imagebuilder] Use this to override the default service endpoint URL
  /// [inspector] Use this to override the default service endpoint URL
  /// [inspector2] Use this to override the default service endpoint URL
  /// [inspectorv2] Use this to override the default service endpoint URL
  /// [internetmonitor] Use this to override the default service endpoint URL
  /// [invoicing] Use this to override the default service endpoint URL
  /// [iot] Use this to override the default service endpoint URL
  /// [ivs] Use this to override the default service endpoint URL
  /// [ivschat] Use this to override the default service endpoint URL
  /// [kafka] Use this to override the default service endpoint URL
  /// [kafkaconnect] Use this to override the default service endpoint URL
  /// [kendra] Use this to override the default service endpoint URL
  /// [keyspaces] Use this to override the default service endpoint URL
  /// [kinesis] Use this to override the default service endpoint URL
  /// [kinesisanalytics] Use this to override the default service endpoint URL
  /// [kinesisanalyticsv2] Use this to override the default service endpoint URL
  /// [kinesisvideo] Use this to override the default service endpoint URL
  /// [kms] Use this to override the default service endpoint URL
  /// [lakeformation] Use this to override the default service endpoint URL
  /// [lambda] Use this to override the default service endpoint URL
  /// [launchwizard] Use this to override the default service endpoint URL
  /// [lex] Use this to override the default service endpoint URL
  /// [lexmodelbuilding] Use this to override the default service endpoint URL
  /// [lexmodelbuildingservice] Use this to override the default service endpoint URL
  /// [lexmodels] Use this to override the default service endpoint URL
  /// [lexmodelsv2] Use this to override the default service endpoint URL
  /// [lexv2models] Use this to override the default service endpoint URL
  /// [licensemanager] Use this to override the default service endpoint URL
  /// [lightsail] Use this to override the default service endpoint URL
  /// [location] Use this to override the default service endpoint URL
  /// [locationservice] Use this to override the default service endpoint URL
  /// [logs] Use this to override the default service endpoint URL
  /// [m2] Use this to override the default service endpoint URL
  /// [macie2] Use this to override the default service endpoint URL
  /// [managedgrafana] Use this to override the default service endpoint URL
  /// [mediaconnect] Use this to override the default service endpoint URL
  /// [mediaconvert] Use this to override the default service endpoint URL
  /// [medialive] Use this to override the default service endpoint URL
  /// [mediapackage] Use this to override the default service endpoint URL
  /// [mediapackagev2] Use this to override the default service endpoint URL
  /// [mediapackagevod] Use this to override the default service endpoint URL
  /// [mediastore] Use this to override the default service endpoint URL
  /// [memorydb] Use this to override the default service endpoint URL
  /// [mgn] Use this to override the default service endpoint URL
  /// [mpa] Use this to override the default service endpoint URL
  /// [mq] Use this to override the default service endpoint URL
  /// [msk] Use this to override the default service endpoint URL
  /// [mwaa] Use this to override the default service endpoint URL
  /// [mwaaserverless] Use this to override the default service endpoint URL
  /// [neptune] Use this to override the default service endpoint URL
  /// [neptunegraph] Use this to override the default service endpoint URL
  /// [networkfirewall] Use this to override the default service endpoint URL
  /// [networkflowmonitor] Use this to override the default service endpoint URL
  /// [networkmanager] Use this to override the default service endpoint URL
  /// [networkmonitor] Use this to override the default service endpoint URL
  /// [notifications] Use this to override the default service endpoint URL
  /// [notificationscontacts] Use this to override the default service endpoint URL
  /// [oam] Use this to override the default service endpoint URL
  /// [observabilityadmin] Use this to override the default service endpoint URL
  /// [odb] Use this to override the default service endpoint URL
  /// [opensearch] Use this to override the default service endpoint URL
  /// [opensearchingestion] Use this to override the default service endpoint URL
  /// [opensearchserverless] Use this to override the default service endpoint URL
  /// [opensearchservice] Use this to override the default service endpoint URL
  /// [organizations] Use this to override the default service endpoint URL
  /// [osis] Use this to override the default service endpoint URL
  /// [outposts] Use this to override the default service endpoint URL
  /// [paymentcryptography] Use this to override the default service endpoint URL
  /// [pcaconnectorad] Use this to override the default service endpoint URL
  /// [pcs] Use this to override the default service endpoint URL
  /// [pinpoint] Use this to override the default service endpoint URL
  /// [pinpointsmsvoicev2] Use this to override the default service endpoint URL
  /// [pipes] Use this to override the default service endpoint URL
  /// [polly] Use this to override the default service endpoint URL
  /// [pricing] Use this to override the default service endpoint URL
  /// [prometheus] Use this to override the default service endpoint URL
  /// [prometheusservice] Use this to override the default service endpoint URL
  /// [qbusiness] Use this to override the default service endpoint URL
  /// [qldb] Use this to override the default service endpoint URL
  /// [quicksight] Use this to override the default service endpoint URL
  /// [ram] Use this to override the default service endpoint URL
  /// [rbin] Use this to override the default service endpoint URL
  /// [rds] Use this to override the default service endpoint URL
  /// [rdsdata] Use this to override the default service endpoint URL
  /// [rdsdataservice] Use this to override the default service endpoint URL
  /// [recyclebin] Use this to override the default service endpoint URL
  /// [redshift] Use this to override the default service endpoint URL
  /// [redshiftdata] Use this to override the default service endpoint URL
  /// [redshiftdataapiservice] Use this to override the default service endpoint URL
  /// [redshiftserverless] Use this to override the default service endpoint URL
  /// [rekognition] Use this to override the default service endpoint URL
  /// [resiliencehub] Use this to override the default service endpoint URL
  /// [resourceexplorer2] Use this to override the default service endpoint URL
  /// [resourcegroups] Use this to override the default service endpoint URL
  /// [resourcegroupstagging] Use this to override the default service endpoint URL
  /// [resourcegroupstaggingapi] Use this to override the default service endpoint URL
  /// [rolesanywhere] Use this to override the default service endpoint URL
  /// [route53] Use this to override the default service endpoint URL
  /// [route53domains] Use this to override the default service endpoint URL
  /// [route53profiles] Use this to override the default service endpoint URL
  /// [route53recoverycontrolconfig] Use this to override the default service endpoint URL
  /// [route53recoveryreadiness] Use this to override the default service endpoint URL
  /// [route53resolver] Use this to override the default service endpoint URL
  /// [rum] Use this to override the default service endpoint URL
  /// [s3] Use this to override the default service endpoint URL
  /// [s3api] Use this to override the default service endpoint URL
  /// [s3control] Use this to override the default service endpoint URL
  /// [s3outposts] Use this to override the default service endpoint URL
  /// [s3tables] Use this to override the default service endpoint URL
  /// [s3vectors] Use this to override the default service endpoint URL
  /// [sagemaker] Use this to override the default service endpoint URL
  /// [savingsplans] Use this to override the default service endpoint URL
  /// [scheduler] Use this to override the default service endpoint URL
  /// [schemas] Use this to override the default service endpoint URL
  /// [secretsmanager] Use this to override the default service endpoint URL
  /// [securityhub] Use this to override the default service endpoint URL
  /// [securitylake] Use this to override the default service endpoint URL
  /// [serverlessapplicationrepository] Use this to override the default service endpoint URL
  /// [serverlessapprepo] Use this to override the default service endpoint URL
  /// [serverlessrepo] Use this to override the default service endpoint URL
  /// [servicecatalog] Use this to override the default service endpoint URL
  /// [servicecatalogappregistry] Use this to override the default service endpoint URL
  /// [servicediscovery] Use this to override the default service endpoint URL
  /// [servicequotas] Use this to override the default service endpoint URL
  /// [ses] Use this to override the default service endpoint URL
  /// [sesv2] Use this to override the default service endpoint URL
  /// [sfn] Use this to override the default service endpoint URL
  /// [shield] Use this to override the default service endpoint URL
  /// [signer] Use this to override the default service endpoint URL
  /// [sns] Use this to override the default service endpoint URL
  /// [sqs] Use this to override the default service endpoint URL
  /// [ssm] Use this to override the default service endpoint URL
  /// [ssmcontacts] Use this to override the default service endpoint URL
  /// [ssmincidents] Use this to override the default service endpoint URL
  /// [ssmquicksetup] Use this to override the default service endpoint URL
  /// [ssmsap] Use this to override the default service endpoint URL
  /// [sso] Use this to override the default service endpoint URL
  /// [ssoadmin] Use this to override the default service endpoint URL
  /// [stepfunctions] Use this to override the default service endpoint URL
  /// [storagegateway] Use this to override the default service endpoint URL
  /// [sts] Use this to override the default service endpoint URL
  /// [swf] Use this to override the default service endpoint URL
  /// [synthetics] Use this to override the default service endpoint URL
  /// [taxsettings] Use this to override the default service endpoint URL
  /// [timestreaminfluxdb] Use this to override the default service endpoint URL
  /// [timestreamquery] Use this to override the default service endpoint URL
  /// [timestreamwrite] Use this to override the default service endpoint URL
  /// [transcribe] Use this to override the default service endpoint URL
  /// [transcribeservice] Use this to override the default service endpoint URL
  /// [transfer] Use this to override the default service endpoint URL
  /// [verifiedpermissions] Use this to override the default service endpoint URL
  /// [vpclattice] Use this to override the default service endpoint URL
  /// [waf] Use this to override the default service endpoint URL
  /// [wafregional] Use this to override the default service endpoint URL
  /// [wafv2] Use this to override the default service endpoint URL
  /// [wellarchitected] Use this to override the default service endpoint URL
  /// [workmail] Use this to override the default service endpoint URL
  /// [workspaces] Use this to override the default service endpoint URL
  /// [workspacesweb] Use this to override the default service endpoint URL
  /// [xray] Use this to override the default service endpoint URL
  ProviderEndpoint({
    this.accessanalyzer,
    this.account,
    this.acm,
    this.acmpca,
    this.amg,
    this.amp,
    this.amplify,
    this.apigateway,
    this.apigatewayv2,
    this.appautoscaling,
    this.appconfig,
    this.appfabric,
    this.appflow,
    this.appintegrations,
    this.appintegrationsservice,
    this.applicationautoscaling,
    this.applicationinsights,
    this.applicationsignals,
    this.appmesh,
    this.appregistry,
    this.apprunner,
    this.appstream,
    this.appsync,
    this.arcregionswitch,
    this.arczonalshift,
    this.athena,
    this.auditmanager,
    this.autoscaling,
    this.autoscalingplans,
    this.backup,
    this.batch,
    this.bcmdataexports,
    this.beanstalk,
    this.bedrock,
    this.bedrockagent,
    this.bedrockagentcore,
    this.billing,
    this.budgets,
    this.ce,
    this.chatbot,
    this.chime,
    this.chimesdkmediapipelines,
    this.chimesdkvoice,
    this.cleanrooms,
    this.cloud9,
    this.cloudcontrol,
    this.cloudcontrolapi,
    this.cloudformation,
    this.cloudfront,
    this.cloudfrontkeyvaluestore,
    this.cloudhsm,
    this.cloudhsmv2,
    this.cloudsearch,
    this.cloudtrail,
    this.cloudwatch,
    this.cloudwatchevents,
    this.cloudwatchevidently,
    this.cloudwatchlog,
    this.cloudwatchlogs,
    this.cloudwatchobservabilityaccessmanager,
    this.cloudwatchrum,
    this.codeartifact,
    this.codebuild,
    this.codecatalyst,
    this.codecommit,
    this.codeconnections,
    this.codedeploy,
    this.codeguruprofiler,
    this.codegurureviewer,
    this.codepipeline,
    this.codestarconnections,
    this.codestarnotifications,
    this.cognitoidentity,
    this.cognitoidentityprovider,
    this.cognitoidp,
    this.comprehend,
    this.computeoptimizer,
    this.config,
    this.configservice,
    this.connect,
    this.connectcases,
    this.controltower,
    this.costandusagereportservice,
    this.costexplorer,
    this.costoptimizationhub,
    this.cur,
    this.customerprofiles,
    this.databasemigration,
    this.databasemigrationservice,
    this.databrew,
    this.dataexchange,
    this.datapipeline,
    this.datasync,
    this.datazone,
    this.dax,
    this.deploy,
    this.detective,
    this.devicefarm,
    this.devopsguru,
    this.directconnect,
    this.directoryservice,
    this.dlm,
    this.dms,
    this.docdb,
    this.docdbelastic,
    this.drs,
    this.ds,
    this.dsql,
    this.dynamodb,
    this.ec2,
    this.ecr,
    this.ecrpublic,
    this.ecs,
    this.efs,
    this.eks,
    this.elasticache,
    this.elasticbeanstalk,
    this.elasticloadbalancing,
    this.elasticloadbalancingv2,
    this.elasticsearch,
    this.elasticsearchservice,
    this.elastictranscoder,
    this.elb,
    this.elbv2,
    this.emr,
    this.emrcontainers,
    this.emrserverless,
    this.es,
    this.eventbridge,
    this.events,
    this.evidently,
    this.evs,
    this.finspace,
    this.firehose,
    this.fis,
    this.fms,
    this.fsx,
    this.gamelift,
    this.glacier,
    this.globalaccelerator,
    this.glue,
    this.gluedatabrew,
    this.grafana,
    this.greengrass,
    this.groundstation,
    this.guardduty,
    this.healthlake,
    this.iam,
    this.identitystore,
    this.imagebuilder,
    this.inspector,
    this.inspector2,
    this.inspectorv2,
    this.internetmonitor,
    this.invoicing,
    this.iot,
    this.ivs,
    this.ivschat,
    this.kafka,
    this.kafkaconnect,
    this.kendra,
    this.keyspaces,
    this.kinesis,
    this.kinesisanalytics,
    this.kinesisanalyticsv2,
    this.kinesisvideo,
    this.kms,
    this.lakeformation,
    this.lambda,
    this.launchwizard,
    this.lex,
    this.lexmodelbuilding,
    this.lexmodelbuildingservice,
    this.lexmodels,
    this.lexmodelsv2,
    this.lexv2models,
    this.licensemanager,
    this.lightsail,
    this.location,
    this.locationservice,
    this.logs,
    this.m2,
    this.macie2,
    this.managedgrafana,
    this.mediaconnect,
    this.mediaconvert,
    this.medialive,
    this.mediapackage,
    this.mediapackagev2,
    this.mediapackagevod,
    this.mediastore,
    this.memorydb,
    this.mgn,
    this.mpa,
    this.mq,
    this.msk,
    this.mwaa,
    this.mwaaserverless,
    this.neptune,
    this.neptunegraph,
    this.networkfirewall,
    this.networkflowmonitor,
    this.networkmanager,
    this.networkmonitor,
    this.notifications,
    this.notificationscontacts,
    this.oam,
    this.observabilityadmin,
    this.odb,
    this.opensearch,
    this.opensearchingestion,
    this.opensearchserverless,
    this.opensearchservice,
    this.organizations,
    this.osis,
    this.outposts,
    this.paymentcryptography,
    this.pcaconnectorad,
    this.pcs,
    this.pinpoint,
    this.pinpointsmsvoicev2,
    this.pipes,
    this.polly,
    this.pricing,
    this.prometheus,
    this.prometheusservice,
    this.qbusiness,
    this.qldb,
    this.quicksight,
    this.ram,
    this.rbin,
    this.rds,
    this.rdsdata,
    this.rdsdataservice,
    this.recyclebin,
    this.redshift,
    this.redshiftdata,
    this.redshiftdataapiservice,
    this.redshiftserverless,
    this.rekognition,
    this.resiliencehub,
    this.resourceexplorer2,
    this.resourcegroups,
    this.resourcegroupstagging,
    this.resourcegroupstaggingapi,
    this.rolesanywhere,
    this.route53,
    this.route53domains,
    this.route53profiles,
    this.route53recoverycontrolconfig,
    this.route53recoveryreadiness,
    this.route53resolver,
    this.rum,
    this.s3,
    this.s3api,
    this.s3control,
    this.s3outposts,
    this.s3tables,
    this.s3vectors,
    this.sagemaker,
    this.savingsplans,
    this.scheduler,
    this.schemas,
    this.secretsmanager,
    this.securityhub,
    this.securitylake,
    this.serverlessapplicationrepository,
    this.serverlessapprepo,
    this.serverlessrepo,
    this.servicecatalog,
    this.servicecatalogappregistry,
    this.servicediscovery,
    this.servicequotas,
    this.ses,
    this.sesv2,
    this.sfn,
    this.shield,
    this.signer,
    this.sns,
    this.sqs,
    this.ssm,
    this.ssmcontacts,
    this.ssmincidents,
    this.ssmquicksetup,
    this.ssmsap,
    this.sso,
    this.ssoadmin,
    this.stepfunctions,
    this.storagegateway,
    this.sts,
    this.swf,
    this.synthetics,
    this.taxsettings,
    this.timestreaminfluxdb,
    this.timestreamquery,
    this.timestreamwrite,
    this.transcribe,
    this.transcribeservice,
    this.transfer,
    this.verifiedpermissions,
    this.vpclattice,
    this.waf,
    this.wafregional,
    this.wafv2,
    this.wellarchitected,
    this.workmail,
    this.workspaces,
    this.workspacesweb,
    this.xray,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessanalyzer': ?accessanalyzer,
      'account': ?account,
      'acm': ?acm,
      'acmpca': ?acmpca,
      'amg': ?amg,
      'amp': ?amp,
      'amplify': ?amplify,
      'apigateway': ?apigateway,
      'apigatewayv2': ?apigatewayv2,
      'appautoscaling': ?appautoscaling,
      'appconfig': ?appconfig,
      'appfabric': ?appfabric,
      'appflow': ?appflow,
      'appintegrations': ?appintegrations,
      'appintegrationsservice': ?appintegrationsservice,
      'applicationautoscaling': ?applicationautoscaling,
      'applicationinsights': ?applicationinsights,
      'applicationsignals': ?applicationsignals,
      'appmesh': ?appmesh,
      'appregistry': ?appregistry,
      'apprunner': ?apprunner,
      'appstream': ?appstream,
      'appsync': ?appsync,
      'arcregionswitch': ?arcregionswitch,
      'arczonalshift': ?arczonalshift,
      'athena': ?athena,
      'auditmanager': ?auditmanager,
      'autoscaling': ?autoscaling,
      'autoscalingplans': ?autoscalingplans,
      'backup': ?backup,
      'batch': ?batch,
      'bcmdataexports': ?bcmdataexports,
      'beanstalk': ?beanstalk,
      'bedrock': ?bedrock,
      'bedrockagent': ?bedrockagent,
      'bedrockagentcore': ?bedrockagentcore,
      'billing': ?billing,
      'budgets': ?budgets,
      'ce': ?ce,
      'chatbot': ?chatbot,
      'chime': ?chime,
      'chimesdkmediapipelines': ?chimesdkmediapipelines,
      'chimesdkvoice': ?chimesdkvoice,
      'cleanrooms': ?cleanrooms,
      'cloud9': ?cloud9,
      'cloudcontrol': ?cloudcontrol,
      'cloudcontrolapi': ?cloudcontrolapi,
      'cloudformation': ?cloudformation,
      'cloudfront': ?cloudfront,
      'cloudfrontkeyvaluestore': ?cloudfrontkeyvaluestore,
      'cloudhsm': ?cloudhsm,
      'cloudhsmv2': ?cloudhsmv2,
      'cloudsearch': ?cloudsearch,
      'cloudtrail': ?cloudtrail,
      'cloudwatch': ?cloudwatch,
      'cloudwatchevents': ?cloudwatchevents,
      'cloudwatchevidently': ?cloudwatchevidently,
      'cloudwatchlog': ?cloudwatchlog,
      'cloudwatchlogs': ?cloudwatchlogs,
      'cloudwatchobservabilityaccessmanager': ?cloudwatchobservabilityaccessmanager,
      'cloudwatchrum': ?cloudwatchrum,
      'codeartifact': ?codeartifact,
      'codebuild': ?codebuild,
      'codecatalyst': ?codecatalyst,
      'codecommit': ?codecommit,
      'codeconnections': ?codeconnections,
      'codedeploy': ?codedeploy,
      'codeguruprofiler': ?codeguruprofiler,
      'codegurureviewer': ?codegurureviewer,
      'codepipeline': ?codepipeline,
      'codestarconnections': ?codestarconnections,
      'codestarnotifications': ?codestarnotifications,
      'cognitoidentity': ?cognitoidentity,
      'cognitoidentityprovider': ?cognitoidentityprovider,
      'cognitoidp': ?cognitoidp,
      'comprehend': ?comprehend,
      'computeoptimizer': ?computeoptimizer,
      'config': ?config,
      'configservice': ?configservice,
      'connect': ?connect,
      'connectcases': ?connectcases,
      'controltower': ?controltower,
      'costandusagereportservice': ?costandusagereportservice,
      'costexplorer': ?costexplorer,
      'costoptimizationhub': ?costoptimizationhub,
      'cur': ?cur,
      'customerprofiles': ?customerprofiles,
      'databasemigration': ?databasemigration,
      'databasemigrationservice': ?databasemigrationservice,
      'databrew': ?databrew,
      'dataexchange': ?dataexchange,
      'datapipeline': ?datapipeline,
      'datasync': ?datasync,
      'datazone': ?datazone,
      'dax': ?dax,
      'deploy': ?deploy,
      'detective': ?detective,
      'devicefarm': ?devicefarm,
      'devopsguru': ?devopsguru,
      'directconnect': ?directconnect,
      'directoryservice': ?directoryservice,
      'dlm': ?dlm,
      'dms': ?dms,
      'docdb': ?docdb,
      'docdbelastic': ?docdbelastic,
      'drs': ?drs,
      'ds': ?ds,
      'dsql': ?dsql,
      'dynamodb': ?dynamodb,
      'ec2': ?ec2,
      'ecr': ?ecr,
      'ecrpublic': ?ecrpublic,
      'ecs': ?ecs,
      'efs': ?efs,
      'eks': ?eks,
      'elasticache': ?elasticache,
      'elasticbeanstalk': ?elasticbeanstalk,
      'elasticloadbalancing': ?elasticloadbalancing,
      'elasticloadbalancingv2': ?elasticloadbalancingv2,
      'elasticsearch': ?elasticsearch,
      'elasticsearchservice': ?elasticsearchservice,
      'elastictranscoder': ?elastictranscoder,
      'elb': ?elb,
      'elbv2': ?elbv2,
      'emr': ?emr,
      'emrcontainers': ?emrcontainers,
      'emrserverless': ?emrserverless,
      'es': ?es,
      'eventbridge': ?eventbridge,
      'events': ?events,
      'evidently': ?evidently,
      'evs': ?evs,
      'finspace': ?finspace,
      'firehose': ?firehose,
      'fis': ?fis,
      'fms': ?fms,
      'fsx': ?fsx,
      'gamelift': ?gamelift,
      'glacier': ?glacier,
      'globalaccelerator': ?globalaccelerator,
      'glue': ?glue,
      'gluedatabrew': ?gluedatabrew,
      'grafana': ?grafana,
      'greengrass': ?greengrass,
      'groundstation': ?groundstation,
      'guardduty': ?guardduty,
      'healthlake': ?healthlake,
      'iam': ?iam,
      'identitystore': ?identitystore,
      'imagebuilder': ?imagebuilder,
      'inspector': ?inspector,
      'inspector2': ?inspector2,
      'inspectorv2': ?inspectorv2,
      'internetmonitor': ?internetmonitor,
      'invoicing': ?invoicing,
      'iot': ?iot,
      'ivs': ?ivs,
      'ivschat': ?ivschat,
      'kafka': ?kafka,
      'kafkaconnect': ?kafkaconnect,
      'kendra': ?kendra,
      'keyspaces': ?keyspaces,
      'kinesis': ?kinesis,
      'kinesisanalytics': ?kinesisanalytics,
      'kinesisanalyticsv2': ?kinesisanalyticsv2,
      'kinesisvideo': ?kinesisvideo,
      'kms': ?kms,
      'lakeformation': ?lakeformation,
      'lambda': ?lambda,
      'launchwizard': ?launchwizard,
      'lex': ?lex,
      'lexmodelbuilding': ?lexmodelbuilding,
      'lexmodelbuildingservice': ?lexmodelbuildingservice,
      'lexmodels': ?lexmodels,
      'lexmodelsv2': ?lexmodelsv2,
      'lexv2models': ?lexv2models,
      'licensemanager': ?licensemanager,
      'lightsail': ?lightsail,
      'location': ?location,
      'locationservice': ?locationservice,
      'logs': ?logs,
      'm2': ?m2,
      'macie2': ?macie2,
      'managedgrafana': ?managedgrafana,
      'mediaconnect': ?mediaconnect,
      'mediaconvert': ?mediaconvert,
      'medialive': ?medialive,
      'mediapackage': ?mediapackage,
      'mediapackagev2': ?mediapackagev2,
      'mediapackagevod': ?mediapackagevod,
      'mediastore': ?mediastore,
      'memorydb': ?memorydb,
      'mgn': ?mgn,
      'mpa': ?mpa,
      'mq': ?mq,
      'msk': ?msk,
      'mwaa': ?mwaa,
      'mwaaserverless': ?mwaaserverless,
      'neptune': ?neptune,
      'neptunegraph': ?neptunegraph,
      'networkfirewall': ?networkfirewall,
      'networkflowmonitor': ?networkflowmonitor,
      'networkmanager': ?networkmanager,
      'networkmonitor': ?networkmonitor,
      'notifications': ?notifications,
      'notificationscontacts': ?notificationscontacts,
      'oam': ?oam,
      'observabilityadmin': ?observabilityadmin,
      'odb': ?odb,
      'opensearch': ?opensearch,
      'opensearchingestion': ?opensearchingestion,
      'opensearchserverless': ?opensearchserverless,
      'opensearchservice': ?opensearchservice,
      'organizations': ?organizations,
      'osis': ?osis,
      'outposts': ?outposts,
      'paymentcryptography': ?paymentcryptography,
      'pcaconnectorad': ?pcaconnectorad,
      'pcs': ?pcs,
      'pinpoint': ?pinpoint,
      'pinpointsmsvoicev2': ?pinpointsmsvoicev2,
      'pipes': ?pipes,
      'polly': ?polly,
      'pricing': ?pricing,
      'prometheus': ?prometheus,
      'prometheusservice': ?prometheusservice,
      'qbusiness': ?qbusiness,
      'qldb': ?qldb,
      'quicksight': ?quicksight,
      'ram': ?ram,
      'rbin': ?rbin,
      'rds': ?rds,
      'rdsdata': ?rdsdata,
      'rdsdataservice': ?rdsdataservice,
      'recyclebin': ?recyclebin,
      'redshift': ?redshift,
      'redshiftdata': ?redshiftdata,
      'redshiftdataapiservice': ?redshiftdataapiservice,
      'redshiftserverless': ?redshiftserverless,
      'rekognition': ?rekognition,
      'resiliencehub': ?resiliencehub,
      'resourceexplorer2': ?resourceexplorer2,
      'resourcegroups': ?resourcegroups,
      'resourcegroupstagging': ?resourcegroupstagging,
      'resourcegroupstaggingapi': ?resourcegroupstaggingapi,
      'rolesanywhere': ?rolesanywhere,
      'route53': ?route53,
      'route53domains': ?route53domains,
      'route53profiles': ?route53profiles,
      'route53recoverycontrolconfig': ?route53recoverycontrolconfig,
      'route53recoveryreadiness': ?route53recoveryreadiness,
      'route53resolver': ?route53resolver,
      'rum': ?rum,
      's3': ?s3,
      's3api': ?s3api,
      's3control': ?s3control,
      's3outposts': ?s3outposts,
      's3tables': ?s3tables,
      's3vectors': ?s3vectors,
      'sagemaker': ?sagemaker,
      'savingsplans': ?savingsplans,
      'scheduler': ?scheduler,
      'schemas': ?schemas,
      'secretsmanager': ?secretsmanager,
      'securityhub': ?securityhub,
      'securitylake': ?securitylake,
      'serverlessapplicationrepository': ?serverlessapplicationrepository,
      'serverlessapprepo': ?serverlessapprepo,
      'serverlessrepo': ?serverlessrepo,
      'servicecatalog': ?servicecatalog,
      'servicecatalogappregistry': ?servicecatalogappregistry,
      'servicediscovery': ?servicediscovery,
      'servicequotas': ?servicequotas,
      'ses': ?ses,
      'sesv2': ?sesv2,
      'sfn': ?sfn,
      'shield': ?shield,
      'signer': ?signer,
      'sns': ?sns,
      'sqs': ?sqs,
      'ssm': ?ssm,
      'ssmcontacts': ?ssmcontacts,
      'ssmincidents': ?ssmincidents,
      'ssmquicksetup': ?ssmquicksetup,
      'ssmsap': ?ssmsap,
      'sso': ?sso,
      'ssoadmin': ?ssoadmin,
      'stepfunctions': ?stepfunctions,
      'storagegateway': ?storagegateway,
      'sts': ?sts,
      'swf': ?swf,
      'synthetics': ?synthetics,
      'taxsettings': ?taxsettings,
      'timestreaminfluxdb': ?timestreaminfluxdb,
      'timestreamquery': ?timestreamquery,
      'timestreamwrite': ?timestreamwrite,
      'transcribe': ?transcribe,
      'transcribeservice': ?transcribeservice,
      'transfer': ?transfer,
      'verifiedpermissions': ?verifiedpermissions,
      'vpclattice': ?vpclattice,
      'waf': ?waf,
      'wafregional': ?wafregional,
      'wafv2': ?wafv2,
      'wellarchitected': ?wellarchitected,
      'workmail': ?workmail,
      'workspaces': ?workspaces,
      'workspacesweb': ?workspacesweb,
      'xray': ?xray,
    };
  }

  factory ProviderEndpoint.fromMap(Map<String, dynamic> map) {
    return ProviderEndpoint(
      accessanalyzer: map['accessanalyzer'] == null ? null : ((map['accessanalyzer'] as String).input()).input(),
      account: map['account'] == null ? null : ((map['account'] as String).input()).input(),
      acm: map['acm'] == null ? null : ((map['acm'] as String).input()).input(),
      acmpca: map['acmpca'] == null ? null : ((map['acmpca'] as String).input()).input(),
      amg: map['amg'] == null ? null : ((map['amg'] as String).input()).input(),
      amp: map['amp'] == null ? null : ((map['amp'] as String).input()).input(),
      amplify: map['amplify'] == null ? null : ((map['amplify'] as String).input()).input(),
      apigateway: map['apigateway'] == null ? null : ((map['apigateway'] as String).input()).input(),
      apigatewayv2: map['apigatewayv2'] == null ? null : ((map['apigatewayv2'] as String).input()).input(),
      appautoscaling: map['appautoscaling'] == null ? null : ((map['appautoscaling'] as String).input()).input(),
      appconfig: map['appconfig'] == null ? null : ((map['appconfig'] as String).input()).input(),
      appfabric: map['appfabric'] == null ? null : ((map['appfabric'] as String).input()).input(),
      appflow: map['appflow'] == null ? null : ((map['appflow'] as String).input()).input(),
      appintegrations: map['appintegrations'] == null ? null : ((map['appintegrations'] as String).input()).input(),
      appintegrationsservice: map['appintegrationsservice'] == null ? null : ((map['appintegrationsservice'] as String).input()).input(),
      applicationautoscaling: map['applicationautoscaling'] == null ? null : ((map['applicationautoscaling'] as String).input()).input(),
      applicationinsights: map['applicationinsights'] == null ? null : ((map['applicationinsights'] as String).input()).input(),
      applicationsignals: map['applicationsignals'] == null ? null : ((map['applicationsignals'] as String).input()).input(),
      appmesh: map['appmesh'] == null ? null : ((map['appmesh'] as String).input()).input(),
      appregistry: map['appregistry'] == null ? null : ((map['appregistry'] as String).input()).input(),
      apprunner: map['apprunner'] == null ? null : ((map['apprunner'] as String).input()).input(),
      appstream: map['appstream'] == null ? null : ((map['appstream'] as String).input()).input(),
      appsync: map['appsync'] == null ? null : ((map['appsync'] as String).input()).input(),
      arcregionswitch: map['arcregionswitch'] == null ? null : ((map['arcregionswitch'] as String).input()).input(),
      arczonalshift: map['arczonalshift'] == null ? null : ((map['arczonalshift'] as String).input()).input(),
      athena: map['athena'] == null ? null : ((map['athena'] as String).input()).input(),
      auditmanager: map['auditmanager'] == null ? null : ((map['auditmanager'] as String).input()).input(),
      autoscaling: map['autoscaling'] == null ? null : ((map['autoscaling'] as String).input()).input(),
      autoscalingplans: map['autoscalingplans'] == null ? null : ((map['autoscalingplans'] as String).input()).input(),
      backup: map['backup'] == null ? null : ((map['backup'] as String).input()).input(),
      batch: map['batch'] == null ? null : ((map['batch'] as String).input()).input(),
      bcmdataexports: map['bcmdataexports'] == null ? null : ((map['bcmdataexports'] as String).input()).input(),
      beanstalk: map['beanstalk'] == null ? null : ((map['beanstalk'] as String).input()).input(),
      bedrock: map['bedrock'] == null ? null : ((map['bedrock'] as String).input()).input(),
      bedrockagent: map['bedrockagent'] == null ? null : ((map['bedrockagent'] as String).input()).input(),
      bedrockagentcore: map['bedrockagentcore'] == null ? null : ((map['bedrockagentcore'] as String).input()).input(),
      billing: map['billing'] == null ? null : ((map['billing'] as String).input()).input(),
      budgets: map['budgets'] == null ? null : ((map['budgets'] as String).input()).input(),
      ce: map['ce'] == null ? null : ((map['ce'] as String).input()).input(),
      chatbot: map['chatbot'] == null ? null : ((map['chatbot'] as String).input()).input(),
      chime: map['chime'] == null ? null : ((map['chime'] as String).input()).input(),
      chimesdkmediapipelines: map['chimesdkmediapipelines'] == null ? null : ((map['chimesdkmediapipelines'] as String).input()).input(),
      chimesdkvoice: map['chimesdkvoice'] == null ? null : ((map['chimesdkvoice'] as String).input()).input(),
      cleanrooms: map['cleanrooms'] == null ? null : ((map['cleanrooms'] as String).input()).input(),
      cloud9: map['cloud9'] == null ? null : ((map['cloud9'] as String).input()).input(),
      cloudcontrol: map['cloudcontrol'] == null ? null : ((map['cloudcontrol'] as String).input()).input(),
      cloudcontrolapi: map['cloudcontrolapi'] == null ? null : ((map['cloudcontrolapi'] as String).input()).input(),
      cloudformation: map['cloudformation'] == null ? null : ((map['cloudformation'] as String).input()).input(),
      cloudfront: map['cloudfront'] == null ? null : ((map['cloudfront'] as String).input()).input(),
      cloudfrontkeyvaluestore: map['cloudfrontkeyvaluestore'] == null ? null : ((map['cloudfrontkeyvaluestore'] as String).input()).input(),
      cloudhsm: map['cloudhsm'] == null ? null : ((map['cloudhsm'] as String).input()).input(),
      cloudhsmv2: map['cloudhsmv2'] == null ? null : ((map['cloudhsmv2'] as String).input()).input(),
      cloudsearch: map['cloudsearch'] == null ? null : ((map['cloudsearch'] as String).input()).input(),
      cloudtrail: map['cloudtrail'] == null ? null : ((map['cloudtrail'] as String).input()).input(),
      cloudwatch: map['cloudwatch'] == null ? null : ((map['cloudwatch'] as String).input()).input(),
      cloudwatchevents: map['cloudwatchevents'] == null ? null : ((map['cloudwatchevents'] as String).input()).input(),
      cloudwatchevidently: map['cloudwatchevidently'] == null ? null : ((map['cloudwatchevidently'] as String).input()).input(),
      cloudwatchlog: map['cloudwatchlog'] == null ? null : ((map['cloudwatchlog'] as String).input()).input(),
      cloudwatchlogs: map['cloudwatchlogs'] == null ? null : ((map['cloudwatchlogs'] as String).input()).input(),
      cloudwatchobservabilityaccessmanager: map['cloudwatchobservabilityaccessmanager'] == null ? null : ((map['cloudwatchobservabilityaccessmanager'] as String).input()).input(),
      cloudwatchrum: map['cloudwatchrum'] == null ? null : ((map['cloudwatchrum'] as String).input()).input(),
      codeartifact: map['codeartifact'] == null ? null : ((map['codeartifact'] as String).input()).input(),
      codebuild: map['codebuild'] == null ? null : ((map['codebuild'] as String).input()).input(),
      codecatalyst: map['codecatalyst'] == null ? null : ((map['codecatalyst'] as String).input()).input(),
      codecommit: map['codecommit'] == null ? null : ((map['codecommit'] as String).input()).input(),
      codeconnections: map['codeconnections'] == null ? null : ((map['codeconnections'] as String).input()).input(),
      codedeploy: map['codedeploy'] == null ? null : ((map['codedeploy'] as String).input()).input(),
      codeguruprofiler: map['codeguruprofiler'] == null ? null : ((map['codeguruprofiler'] as String).input()).input(),
      codegurureviewer: map['codegurureviewer'] == null ? null : ((map['codegurureviewer'] as String).input()).input(),
      codepipeline: map['codepipeline'] == null ? null : ((map['codepipeline'] as String).input()).input(),
      codestarconnections: map['codestarconnections'] == null ? null : ((map['codestarconnections'] as String).input()).input(),
      codestarnotifications: map['codestarnotifications'] == null ? null : ((map['codestarnotifications'] as String).input()).input(),
      cognitoidentity: map['cognitoidentity'] == null ? null : ((map['cognitoidentity'] as String).input()).input(),
      cognitoidentityprovider: map['cognitoidentityprovider'] == null ? null : ((map['cognitoidentityprovider'] as String).input()).input(),
      cognitoidp: map['cognitoidp'] == null ? null : ((map['cognitoidp'] as String).input()).input(),
      comprehend: map['comprehend'] == null ? null : ((map['comprehend'] as String).input()).input(),
      computeoptimizer: map['computeoptimizer'] == null ? null : ((map['computeoptimizer'] as String).input()).input(),
      config: map['config'] == null ? null : ((map['config'] as String).input()).input(),
      configservice: map['configservice'] == null ? null : ((map['configservice'] as String).input()).input(),
      connect: map['connect'] == null ? null : ((map['connect'] as String).input()).input(),
      connectcases: map['connectcases'] == null ? null : ((map['connectcases'] as String).input()).input(),
      controltower: map['controltower'] == null ? null : ((map['controltower'] as String).input()).input(),
      costandusagereportservice: map['costandusagereportservice'] == null ? null : ((map['costandusagereportservice'] as String).input()).input(),
      costexplorer: map['costexplorer'] == null ? null : ((map['costexplorer'] as String).input()).input(),
      costoptimizationhub: map['costoptimizationhub'] == null ? null : ((map['costoptimizationhub'] as String).input()).input(),
      cur: map['cur'] == null ? null : ((map['cur'] as String).input()).input(),
      customerprofiles: map['customerprofiles'] == null ? null : ((map['customerprofiles'] as String).input()).input(),
      databasemigration: map['databasemigration'] == null ? null : ((map['databasemigration'] as String).input()).input(),
      databasemigrationservice: map['databasemigrationservice'] == null ? null : ((map['databasemigrationservice'] as String).input()).input(),
      databrew: map['databrew'] == null ? null : ((map['databrew'] as String).input()).input(),
      dataexchange: map['dataexchange'] == null ? null : ((map['dataexchange'] as String).input()).input(),
      datapipeline: map['datapipeline'] == null ? null : ((map['datapipeline'] as String).input()).input(),
      datasync: map['datasync'] == null ? null : ((map['datasync'] as String).input()).input(),
      datazone: map['datazone'] == null ? null : ((map['datazone'] as String).input()).input(),
      dax: map['dax'] == null ? null : ((map['dax'] as String).input()).input(),
      deploy: map['deploy'] == null ? null : ((map['deploy'] as String).input()).input(),
      detective: map['detective'] == null ? null : ((map['detective'] as String).input()).input(),
      devicefarm: map['devicefarm'] == null ? null : ((map['devicefarm'] as String).input()).input(),
      devopsguru: map['devopsguru'] == null ? null : ((map['devopsguru'] as String).input()).input(),
      directconnect: map['directconnect'] == null ? null : ((map['directconnect'] as String).input()).input(),
      directoryservice: map['directoryservice'] == null ? null : ((map['directoryservice'] as String).input()).input(),
      dlm: map['dlm'] == null ? null : ((map['dlm'] as String).input()).input(),
      dms: map['dms'] == null ? null : ((map['dms'] as String).input()).input(),
      docdb: map['docdb'] == null ? null : ((map['docdb'] as String).input()).input(),
      docdbelastic: map['docdbelastic'] == null ? null : ((map['docdbelastic'] as String).input()).input(),
      drs: map['drs'] == null ? null : ((map['drs'] as String).input()).input(),
      ds: map['ds'] == null ? null : ((map['ds'] as String).input()).input(),
      dsql: map['dsql'] == null ? null : ((map['dsql'] as String).input()).input(),
      dynamodb: map['dynamodb'] == null ? null : ((map['dynamodb'] as String).input()).input(),
      ec2: map['ec2'] == null ? null : ((map['ec2'] as String).input()).input(),
      ecr: map['ecr'] == null ? null : ((map['ecr'] as String).input()).input(),
      ecrpublic: map['ecrpublic'] == null ? null : ((map['ecrpublic'] as String).input()).input(),
      ecs: map['ecs'] == null ? null : ((map['ecs'] as String).input()).input(),
      efs: map['efs'] == null ? null : ((map['efs'] as String).input()).input(),
      eks: map['eks'] == null ? null : ((map['eks'] as String).input()).input(),
      elasticache: map['elasticache'] == null ? null : ((map['elasticache'] as String).input()).input(),
      elasticbeanstalk: map['elasticbeanstalk'] == null ? null : ((map['elasticbeanstalk'] as String).input()).input(),
      elasticloadbalancing: map['elasticloadbalancing'] == null ? null : ((map['elasticloadbalancing'] as String).input()).input(),
      elasticloadbalancingv2: map['elasticloadbalancingv2'] == null ? null : ((map['elasticloadbalancingv2'] as String).input()).input(),
      elasticsearch: map['elasticsearch'] == null ? null : ((map['elasticsearch'] as String).input()).input(),
      elasticsearchservice: map['elasticsearchservice'] == null ? null : ((map['elasticsearchservice'] as String).input()).input(),
      elastictranscoder: map['elastictranscoder'] == null ? null : ((map['elastictranscoder'] as String).input()).input(),
      elb: map['elb'] == null ? null : ((map['elb'] as String).input()).input(),
      elbv2: map['elbv2'] == null ? null : ((map['elbv2'] as String).input()).input(),
      emr: map['emr'] == null ? null : ((map['emr'] as String).input()).input(),
      emrcontainers: map['emrcontainers'] == null ? null : ((map['emrcontainers'] as String).input()).input(),
      emrserverless: map['emrserverless'] == null ? null : ((map['emrserverless'] as String).input()).input(),
      es: map['es'] == null ? null : ((map['es'] as String).input()).input(),
      eventbridge: map['eventbridge'] == null ? null : ((map['eventbridge'] as String).input()).input(),
      events: map['events'] == null ? null : ((map['events'] as String).input()).input(),
      evidently: map['evidently'] == null ? null : ((map['evidently'] as String).input()).input(),
      evs: map['evs'] == null ? null : ((map['evs'] as String).input()).input(),
      finspace: map['finspace'] == null ? null : ((map['finspace'] as String).input()).input(),
      firehose: map['firehose'] == null ? null : ((map['firehose'] as String).input()).input(),
      fis: map['fis'] == null ? null : ((map['fis'] as String).input()).input(),
      fms: map['fms'] == null ? null : ((map['fms'] as String).input()).input(),
      fsx: map['fsx'] == null ? null : ((map['fsx'] as String).input()).input(),
      gamelift: map['gamelift'] == null ? null : ((map['gamelift'] as String).input()).input(),
      glacier: map['glacier'] == null ? null : ((map['glacier'] as String).input()).input(),
      globalaccelerator: map['globalaccelerator'] == null ? null : ((map['globalaccelerator'] as String).input()).input(),
      glue: map['glue'] == null ? null : ((map['glue'] as String).input()).input(),
      gluedatabrew: map['gluedatabrew'] == null ? null : ((map['gluedatabrew'] as String).input()).input(),
      grafana: map['grafana'] == null ? null : ((map['grafana'] as String).input()).input(),
      greengrass: map['greengrass'] == null ? null : ((map['greengrass'] as String).input()).input(),
      groundstation: map['groundstation'] == null ? null : ((map['groundstation'] as String).input()).input(),
      guardduty: map['guardduty'] == null ? null : ((map['guardduty'] as String).input()).input(),
      healthlake: map['healthlake'] == null ? null : ((map['healthlake'] as String).input()).input(),
      iam: map['iam'] == null ? null : ((map['iam'] as String).input()).input(),
      identitystore: map['identitystore'] == null ? null : ((map['identitystore'] as String).input()).input(),
      imagebuilder: map['imagebuilder'] == null ? null : ((map['imagebuilder'] as String).input()).input(),
      inspector: map['inspector'] == null ? null : ((map['inspector'] as String).input()).input(),
      inspector2: map['inspector2'] == null ? null : ((map['inspector2'] as String).input()).input(),
      inspectorv2: map['inspectorv2'] == null ? null : ((map['inspectorv2'] as String).input()).input(),
      internetmonitor: map['internetmonitor'] == null ? null : ((map['internetmonitor'] as String).input()).input(),
      invoicing: map['invoicing'] == null ? null : ((map['invoicing'] as String).input()).input(),
      iot: map['iot'] == null ? null : ((map['iot'] as String).input()).input(),
      ivs: map['ivs'] == null ? null : ((map['ivs'] as String).input()).input(),
      ivschat: map['ivschat'] == null ? null : ((map['ivschat'] as String).input()).input(),
      kafka: map['kafka'] == null ? null : ((map['kafka'] as String).input()).input(),
      kafkaconnect: map['kafkaconnect'] == null ? null : ((map['kafkaconnect'] as String).input()).input(),
      kendra: map['kendra'] == null ? null : ((map['kendra'] as String).input()).input(),
      keyspaces: map['keyspaces'] == null ? null : ((map['keyspaces'] as String).input()).input(),
      kinesis: map['kinesis'] == null ? null : ((map['kinesis'] as String).input()).input(),
      kinesisanalytics: map['kinesisanalytics'] == null ? null : ((map['kinesisanalytics'] as String).input()).input(),
      kinesisanalyticsv2: map['kinesisanalyticsv2'] == null ? null : ((map['kinesisanalyticsv2'] as String).input()).input(),
      kinesisvideo: map['kinesisvideo'] == null ? null : ((map['kinesisvideo'] as String).input()).input(),
      kms: map['kms'] == null ? null : ((map['kms'] as String).input()).input(),
      lakeformation: map['lakeformation'] == null ? null : ((map['lakeformation'] as String).input()).input(),
      lambda: map['lambda'] == null ? null : ((map['lambda'] as String).input()).input(),
      launchwizard: map['launchwizard'] == null ? null : ((map['launchwizard'] as String).input()).input(),
      lex: map['lex'] == null ? null : ((map['lex'] as String).input()).input(),
      lexmodelbuilding: map['lexmodelbuilding'] == null ? null : ((map['lexmodelbuilding'] as String).input()).input(),
      lexmodelbuildingservice: map['lexmodelbuildingservice'] == null ? null : ((map['lexmodelbuildingservice'] as String).input()).input(),
      lexmodels: map['lexmodels'] == null ? null : ((map['lexmodels'] as String).input()).input(),
      lexmodelsv2: map['lexmodelsv2'] == null ? null : ((map['lexmodelsv2'] as String).input()).input(),
      lexv2models: map['lexv2models'] == null ? null : ((map['lexv2models'] as String).input()).input(),
      licensemanager: map['licensemanager'] == null ? null : ((map['licensemanager'] as String).input()).input(),
      lightsail: map['lightsail'] == null ? null : ((map['lightsail'] as String).input()).input(),
      location: map['location'] == null ? null : ((map['location'] as String).input()).input(),
      locationservice: map['locationservice'] == null ? null : ((map['locationservice'] as String).input()).input(),
      logs: map['logs'] == null ? null : ((map['logs'] as String).input()).input(),
      m2: map['m2'] == null ? null : ((map['m2'] as String).input()).input(),
      macie2: map['macie2'] == null ? null : ((map['macie2'] as String).input()).input(),
      managedgrafana: map['managedgrafana'] == null ? null : ((map['managedgrafana'] as String).input()).input(),
      mediaconnect: map['mediaconnect'] == null ? null : ((map['mediaconnect'] as String).input()).input(),
      mediaconvert: map['mediaconvert'] == null ? null : ((map['mediaconvert'] as String).input()).input(),
      medialive: map['medialive'] == null ? null : ((map['medialive'] as String).input()).input(),
      mediapackage: map['mediapackage'] == null ? null : ((map['mediapackage'] as String).input()).input(),
      mediapackagev2: map['mediapackagev2'] == null ? null : ((map['mediapackagev2'] as String).input()).input(),
      mediapackagevod: map['mediapackagevod'] == null ? null : ((map['mediapackagevod'] as String).input()).input(),
      mediastore: map['mediastore'] == null ? null : ((map['mediastore'] as String).input()).input(),
      memorydb: map['memorydb'] == null ? null : ((map['memorydb'] as String).input()).input(),
      mgn: map['mgn'] == null ? null : ((map['mgn'] as String).input()).input(),
      mpa: map['mpa'] == null ? null : ((map['mpa'] as String).input()).input(),
      mq: map['mq'] == null ? null : ((map['mq'] as String).input()).input(),
      msk: map['msk'] == null ? null : ((map['msk'] as String).input()).input(),
      mwaa: map['mwaa'] == null ? null : ((map['mwaa'] as String).input()).input(),
      mwaaserverless: map['mwaaserverless'] == null ? null : ((map['mwaaserverless'] as String).input()).input(),
      neptune: map['neptune'] == null ? null : ((map['neptune'] as String).input()).input(),
      neptunegraph: map['neptunegraph'] == null ? null : ((map['neptunegraph'] as String).input()).input(),
      networkfirewall: map['networkfirewall'] == null ? null : ((map['networkfirewall'] as String).input()).input(),
      networkflowmonitor: map['networkflowmonitor'] == null ? null : ((map['networkflowmonitor'] as String).input()).input(),
      networkmanager: map['networkmanager'] == null ? null : ((map['networkmanager'] as String).input()).input(),
      networkmonitor: map['networkmonitor'] == null ? null : ((map['networkmonitor'] as String).input()).input(),
      notifications: map['notifications'] == null ? null : ((map['notifications'] as String).input()).input(),
      notificationscontacts: map['notificationscontacts'] == null ? null : ((map['notificationscontacts'] as String).input()).input(),
      oam: map['oam'] == null ? null : ((map['oam'] as String).input()).input(),
      observabilityadmin: map['observabilityadmin'] == null ? null : ((map['observabilityadmin'] as String).input()).input(),
      odb: map['odb'] == null ? null : ((map['odb'] as String).input()).input(),
      opensearch: map['opensearch'] == null ? null : ((map['opensearch'] as String).input()).input(),
      opensearchingestion: map['opensearchingestion'] == null ? null : ((map['opensearchingestion'] as String).input()).input(),
      opensearchserverless: map['opensearchserverless'] == null ? null : ((map['opensearchserverless'] as String).input()).input(),
      opensearchservice: map['opensearchservice'] == null ? null : ((map['opensearchservice'] as String).input()).input(),
      organizations: map['organizations'] == null ? null : ((map['organizations'] as String).input()).input(),
      osis: map['osis'] == null ? null : ((map['osis'] as String).input()).input(),
      outposts: map['outposts'] == null ? null : ((map['outposts'] as String).input()).input(),
      paymentcryptography: map['paymentcryptography'] == null ? null : ((map['paymentcryptography'] as String).input()).input(),
      pcaconnectorad: map['pcaconnectorad'] == null ? null : ((map['pcaconnectorad'] as String).input()).input(),
      pcs: map['pcs'] == null ? null : ((map['pcs'] as String).input()).input(),
      pinpoint: map['pinpoint'] == null ? null : ((map['pinpoint'] as String).input()).input(),
      pinpointsmsvoicev2: map['pinpointsmsvoicev2'] == null ? null : ((map['pinpointsmsvoicev2'] as String).input()).input(),
      pipes: map['pipes'] == null ? null : ((map['pipes'] as String).input()).input(),
      polly: map['polly'] == null ? null : ((map['polly'] as String).input()).input(),
      pricing: map['pricing'] == null ? null : ((map['pricing'] as String).input()).input(),
      prometheus: map['prometheus'] == null ? null : ((map['prometheus'] as String).input()).input(),
      prometheusservice: map['prometheusservice'] == null ? null : ((map['prometheusservice'] as String).input()).input(),
      qbusiness: map['qbusiness'] == null ? null : ((map['qbusiness'] as String).input()).input(),
      qldb: map['qldb'] == null ? null : ((map['qldb'] as String).input()).input(),
      quicksight: map['quicksight'] == null ? null : ((map['quicksight'] as String).input()).input(),
      ram: map['ram'] == null ? null : ((map['ram'] as String).input()).input(),
      rbin: map['rbin'] == null ? null : ((map['rbin'] as String).input()).input(),
      rds: map['rds'] == null ? null : ((map['rds'] as String).input()).input(),
      rdsdata: map['rdsdata'] == null ? null : ((map['rdsdata'] as String).input()).input(),
      rdsdataservice: map['rdsdataservice'] == null ? null : ((map['rdsdataservice'] as String).input()).input(),
      recyclebin: map['recyclebin'] == null ? null : ((map['recyclebin'] as String).input()).input(),
      redshift: map['redshift'] == null ? null : ((map['redshift'] as String).input()).input(),
      redshiftdata: map['redshiftdata'] == null ? null : ((map['redshiftdata'] as String).input()).input(),
      redshiftdataapiservice: map['redshiftdataapiservice'] == null ? null : ((map['redshiftdataapiservice'] as String).input()).input(),
      redshiftserverless: map['redshiftserverless'] == null ? null : ((map['redshiftserverless'] as String).input()).input(),
      rekognition: map['rekognition'] == null ? null : ((map['rekognition'] as String).input()).input(),
      resiliencehub: map['resiliencehub'] == null ? null : ((map['resiliencehub'] as String).input()).input(),
      resourceexplorer2: map['resourceexplorer2'] == null ? null : ((map['resourceexplorer2'] as String).input()).input(),
      resourcegroups: map['resourcegroups'] == null ? null : ((map['resourcegroups'] as String).input()).input(),
      resourcegroupstagging: map['resourcegroupstagging'] == null ? null : ((map['resourcegroupstagging'] as String).input()).input(),
      resourcegroupstaggingapi: map['resourcegroupstaggingapi'] == null ? null : ((map['resourcegroupstaggingapi'] as String).input()).input(),
      rolesanywhere: map['rolesanywhere'] == null ? null : ((map['rolesanywhere'] as String).input()).input(),
      route53: map['route53'] == null ? null : ((map['route53'] as String).input()).input(),
      route53domains: map['route53domains'] == null ? null : ((map['route53domains'] as String).input()).input(),
      route53profiles: map['route53profiles'] == null ? null : ((map['route53profiles'] as String).input()).input(),
      route53recoverycontrolconfig: map['route53recoverycontrolconfig'] == null ? null : ((map['route53recoverycontrolconfig'] as String).input()).input(),
      route53recoveryreadiness: map['route53recoveryreadiness'] == null ? null : ((map['route53recoveryreadiness'] as String).input()).input(),
      route53resolver: map['route53resolver'] == null ? null : ((map['route53resolver'] as String).input()).input(),
      rum: map['rum'] == null ? null : ((map['rum'] as String).input()).input(),
      s3: map['s3'] == null ? null : ((map['s3'] as String).input()).input(),
      s3api: map['s3api'] == null ? null : ((map['s3api'] as String).input()).input(),
      s3control: map['s3control'] == null ? null : ((map['s3control'] as String).input()).input(),
      s3outposts: map['s3outposts'] == null ? null : ((map['s3outposts'] as String).input()).input(),
      s3tables: map['s3tables'] == null ? null : ((map['s3tables'] as String).input()).input(),
      s3vectors: map['s3vectors'] == null ? null : ((map['s3vectors'] as String).input()).input(),
      sagemaker: map['sagemaker'] == null ? null : ((map['sagemaker'] as String).input()).input(),
      savingsplans: map['savingsplans'] == null ? null : ((map['savingsplans'] as String).input()).input(),
      scheduler: map['scheduler'] == null ? null : ((map['scheduler'] as String).input()).input(),
      schemas: map['schemas'] == null ? null : ((map['schemas'] as String).input()).input(),
      secretsmanager: map['secretsmanager'] == null ? null : ((map['secretsmanager'] as String).input()).input(),
      securityhub: map['securityhub'] == null ? null : ((map['securityhub'] as String).input()).input(),
      securitylake: map['securitylake'] == null ? null : ((map['securitylake'] as String).input()).input(),
      serverlessapplicationrepository: map['serverlessapplicationrepository'] == null ? null : ((map['serverlessapplicationrepository'] as String).input()).input(),
      serverlessapprepo: map['serverlessapprepo'] == null ? null : ((map['serverlessapprepo'] as String).input()).input(),
      serverlessrepo: map['serverlessrepo'] == null ? null : ((map['serverlessrepo'] as String).input()).input(),
      servicecatalog: map['servicecatalog'] == null ? null : ((map['servicecatalog'] as String).input()).input(),
      servicecatalogappregistry: map['servicecatalogappregistry'] == null ? null : ((map['servicecatalogappregistry'] as String).input()).input(),
      servicediscovery: map['servicediscovery'] == null ? null : ((map['servicediscovery'] as String).input()).input(),
      servicequotas: map['servicequotas'] == null ? null : ((map['servicequotas'] as String).input()).input(),
      ses: map['ses'] == null ? null : ((map['ses'] as String).input()).input(),
      sesv2: map['sesv2'] == null ? null : ((map['sesv2'] as String).input()).input(),
      sfn: map['sfn'] == null ? null : ((map['sfn'] as String).input()).input(),
      shield: map['shield'] == null ? null : ((map['shield'] as String).input()).input(),
      signer: map['signer'] == null ? null : ((map['signer'] as String).input()).input(),
      sns: map['sns'] == null ? null : ((map['sns'] as String).input()).input(),
      sqs: map['sqs'] == null ? null : ((map['sqs'] as String).input()).input(),
      ssm: map['ssm'] == null ? null : ((map['ssm'] as String).input()).input(),
      ssmcontacts: map['ssmcontacts'] == null ? null : ((map['ssmcontacts'] as String).input()).input(),
      ssmincidents: map['ssmincidents'] == null ? null : ((map['ssmincidents'] as String).input()).input(),
      ssmquicksetup: map['ssmquicksetup'] == null ? null : ((map['ssmquicksetup'] as String).input()).input(),
      ssmsap: map['ssmsap'] == null ? null : ((map['ssmsap'] as String).input()).input(),
      sso: map['sso'] == null ? null : ((map['sso'] as String).input()).input(),
      ssoadmin: map['ssoadmin'] == null ? null : ((map['ssoadmin'] as String).input()).input(),
      stepfunctions: map['stepfunctions'] == null ? null : ((map['stepfunctions'] as String).input()).input(),
      storagegateway: map['storagegateway'] == null ? null : ((map['storagegateway'] as String).input()).input(),
      sts: map['sts'] == null ? null : ((map['sts'] as String).input()).input(),
      swf: map['swf'] == null ? null : ((map['swf'] as String).input()).input(),
      synthetics: map['synthetics'] == null ? null : ((map['synthetics'] as String).input()).input(),
      taxsettings: map['taxsettings'] == null ? null : ((map['taxsettings'] as String).input()).input(),
      timestreaminfluxdb: map['timestreaminfluxdb'] == null ? null : ((map['timestreaminfluxdb'] as String).input()).input(),
      timestreamquery: map['timestreamquery'] == null ? null : ((map['timestreamquery'] as String).input()).input(),
      timestreamwrite: map['timestreamwrite'] == null ? null : ((map['timestreamwrite'] as String).input()).input(),
      transcribe: map['transcribe'] == null ? null : ((map['transcribe'] as String).input()).input(),
      transcribeservice: map['transcribeservice'] == null ? null : ((map['transcribeservice'] as String).input()).input(),
      transfer: map['transfer'] == null ? null : ((map['transfer'] as String).input()).input(),
      verifiedpermissions: map['verifiedpermissions'] == null ? null : ((map['verifiedpermissions'] as String).input()).input(),
      vpclattice: map['vpclattice'] == null ? null : ((map['vpclattice'] as String).input()).input(),
      waf: map['waf'] == null ? null : ((map['waf'] as String).input()).input(),
      wafregional: map['wafregional'] == null ? null : ((map['wafregional'] as String).input()).input(),
      wafv2: map['wafv2'] == null ? null : ((map['wafv2'] as String).input()).input(),
      wellarchitected: map['wellarchitected'] == null ? null : ((map['wellarchitected'] as String).input()).input(),
      workmail: map['workmail'] == null ? null : ((map['workmail'] as String).input()).input(),
      workspaces: map['workspaces'] == null ? null : ((map['workspaces'] as String).input()).input(),
      workspacesweb: map['workspacesweb'] == null ? null : ((map['workspacesweb'] as String).input()).input(),
      xray: map['xray'] == null ? null : ((map['xray'] as String).input()).input(),
    );
  }
}

