// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_app_config.dart';
import 'application_data_source.dart';
import 'application_iam_identity_center_options.dart';
import 'application_timeouts.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// Configuration block(s) for OpenSearch application settings. See App Config below.
  final pulumi.Input<List<ApplicationAppConfig>>? appConfigs;
  /// The Amazon Resource Name (ARN) of the OpenSearch application.
  final pulumi.Input<String>? arn;
  /// Configuration block(s) for data sources to link to the OpenSearch application. See Data Source below.
  final pulumi.Input<List<ApplicationDataSource>>? dataSources;
  /// Endpoint URL of the OpenSearch application.
  final pulumi.Input<String>? endpoint;
  /// Configuration block for integrating AWS IAM Identity Center with the OpenSearch application. See IAM Identity Center Options below.
  final pulumi.Input<ApplicationIamIdentityCenterOptions>? iamIdentityCenterOptions;
  /// ARN of the KMS key used to encrypt the application's data at rest.
  final pulumi.Input<String>? kmsKeyArn;
  /// The unique name of the OpenSearch application. Names must be unique within an AWS Region for each account. Must be between 3 and 30 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ApplicationTimeouts>? timeouts;

  /// Creates a new [ApplicationState].
  /// [appConfigs] Configuration block(s) for OpenSearch application settings. See App Config below.
  /// [arn] The Amazon Resource Name (ARN) of the OpenSearch application.
  /// [dataSources] Configuration block(s) for data sources to link to the OpenSearch application. See Data Source below.
  /// [endpoint] Endpoint URL of the OpenSearch application.
  /// [iamIdentityCenterOptions] Configuration block for integrating AWS IAM Identity Center with the OpenSearch application. See IAM Identity Center Options below.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the application's data at rest.
  /// [name] The unique name of the OpenSearch application. Names must be unique within an AWS Region for each account. Must be between 3 and 30 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ApplicationState({
    this.appConfigs,
    this.arn,
    this.dataSources,
    this.endpoint,
    this.iamIdentityCenterOptions,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConfigs': ?pulumi.Input.mapOptionalInputValue<List<ApplicationAppConfig>, List<Map<String, dynamic>>>(appConfigs, (value) => pulumi.Input.encodeList<ApplicationAppConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'dataSources': ?pulumi.Input.mapOptionalInputValue<List<ApplicationDataSource>, List<Map<String, dynamic>>>(dataSources, (value) => pulumi.Input.encodeList<ApplicationDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpoint': ?endpoint,
      'iamIdentityCenterOptions': ?pulumi.Input.mapOptionalInputValue<ApplicationIamIdentityCenterOptions, Map<String, dynamic>>(iamIdentityCenterOptions, (value) => value.toMap()),
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ApplicationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      appConfigs: map['appConfigs'] == null ? null : ((pulumi.Input.decodeList<ApplicationAppConfig>(map['appConfigs']!, (value) => ApplicationAppConfig.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      dataSources: map['dataSources'] == null ? null : ((pulumi.Input.decodeList<ApplicationDataSource>(map['dataSources']!, (value) => ApplicationDataSource.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      endpoint: map['endpoint'] == null ? null : ((map['endpoint'] as String).input()).input(),
      iamIdentityCenterOptions: map['iamIdentityCenterOptions'] == null ? null : ((ApplicationIamIdentityCenterOptions.fromMap((map['iamIdentityCenterOptions']! as Map).cast<String, dynamic>())).input()).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ApplicationTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

