// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_app_config/application_app_config.dart';
import '../application_data_source/application_data_source.dart';
import '../application_iam_identity_center_options/application_iam_identity_center_options.dart';
import '../application_timeouts/application_timeouts_opensearch.dart';

/// The set of arguments for Application.
class ApplicationOpensearchArgs {
  /// Configuration block(s) for OpenSearch application settings. See App Config below.
  final pulumi.Input<List<ApplicationAppConfig>>? appConfigs;

  /// Configuration block(s) for data sources to link to the OpenSearch application. See Data Source below.
  final pulumi.Input<List<ApplicationDataSource>>? dataSources;

  /// Configuration block for integrating AWS IAM Identity Center with the OpenSearch application. See IAM Identity Center Options below.
  final pulumi.Input<ApplicationIamIdentityCenterOptions>?
      iamIdentityCenterOptions;

  /// ARN of the KMS key used to encrypt the application's data at rest.
  final pulumi.Input<String>? kmsKeyArn;

  /// The unique name of the OpenSearch application. Names must be unique within an AWS Region for each account. Must be between 3 and 30 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ApplicationTimeoutsOpensearch>? timeouts;

  ApplicationOpensearchArgs({
    this.appConfigs,
    this.dataSources,
    this.iamIdentityCenterOptions,
    this.kmsKeyArn,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appConfigsValue = appConfigs;
    if (appConfigsValue != null) {
      map['appConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<ApplicationAppConfig>, List<Map<String, dynamic>>>(
          appConfigsValue,
          (value) => pulumi.Input.encodeList<ApplicationAppConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final dataSourcesValue = dataSources;
    if (dataSourcesValue != null) {
      map['dataSources'] = pulumi.Input.mapOptionalInputValue<
              List<ApplicationDataSource>, List<Map<String, dynamic>>>(
          dataSourcesValue,
          (value) => pulumi.Input.encodeList<ApplicationDataSource,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final iamIdentityCenterOptionsValue = iamIdentityCenterOptions;
    if (iamIdentityCenterOptionsValue != null) {
      map['iamIdentityCenterOptions'] = pulumi.Input.mapOptionalInputValue<
              ApplicationIamIdentityCenterOptions, Map<String, dynamic>>(
          iamIdentityCenterOptionsValue, (value) => value.toMap());
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ApplicationTimeoutsOpensearch,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApplicationOpensearchArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationOpensearchArgs(
      appConfigs: pulumi.Input.asOptionalInput<List<ApplicationAppConfig>>(
          map['appConfigs']),
      dataSources: pulumi.Input.asOptionalInput<List<ApplicationDataSource>>(
          map['dataSources']),
      iamIdentityCenterOptions:
          pulumi.Input.asOptionalInput<ApplicationIamIdentityCenterOptions>(
              map['iamIdentityCenterOptions']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ApplicationTimeoutsOpensearch>(
          map['timeouts']),
    );
  }
}
