// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_app_config.dart';
import 'application_data_source.dart';
import 'application_iam_identity_center_options.dart';
import 'application_timeouts.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// Configuration block(s) for OpenSearch application settings. See App Config below.
  final pulumi.Input<List<ApplicationAppConfig>?>? appConfigs;
  /// ARN of the OpenSearch application.
  final pulumi.Input<String?>? arn;
  /// Configuration block(s) for data sources to link to the OpenSearch application. See Data Source below.
  final pulumi.Input<List<ApplicationDataSource>?>? dataSources;
  /// Endpoint URL of the OpenSearch application.
  final pulumi.Input<String?>? endpoint;
  /// Configuration block for integrating AWS IAM Identity Center with the OpenSearch application. See IAM Identity Center Options below.
  final pulumi.Input<ApplicationIamIdentityCenterOptions?>? iamIdentityCenterOptions;
  /// ARN of the KMS key used to encrypt the application's data at rest.
  final pulumi.Input<String?>? kmsKeyArn;
  /// The unique name of the OpenSearch application. Names must be unique within an AWS Region for each account. Must be between 3 and 30 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<ApplicationTimeouts?>? timeouts;

  /// Creates a new [ApplicationState].
  /// [appConfigs] Configuration block(s) for OpenSearch application settings. See App Config below.
  /// [arn] ARN of the OpenSearch application.
  /// [dataSources] Configuration block(s) for data sources to link to the OpenSearch application. See Data Source below.
  /// [endpoint] Endpoint URL of the OpenSearch application.
  /// [iamIdentityCenterOptions] Configuration block for integrating AWS IAM Identity Center with the OpenSearch application. See IAM Identity Center Options below.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the application's data at rest.
  /// [name] The unique name of the OpenSearch application. Names must be unique within an AWS Region for each account. Must be between 3 and 30 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const ApplicationState({
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
      appConfigs: (() { final guardedValue = map['appConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationAppConfig>(guardedValue, (value) => ApplicationAppConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationDataSource>(guardedValue, (value) => ApplicationDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamIdentityCenterOptions: (() { final guardedValue = map['iamIdentityCenterOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationIamIdentityCenterOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
