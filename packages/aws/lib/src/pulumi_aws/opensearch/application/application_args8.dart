// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_app_config/application_app_config.dart';
import '../application_data_source/application_data_source.dart';
import '../application_iam_identity_center_options/application_iam_identity_center_options.dart';
import '../application_timeouts/application_timeouts2.dart';

/// The set of arguments for Application.
class ApplicationArgs8 {
  /// Configuration block(s) for OpenSearch application settings. See App Config below.
  final Input<List<ApplicationAppConfig>>? appConfigs;

  /// Configuration block(s) for data sources to link to the OpenSearch application. See Data Source below.
  final Input<List<ApplicationDataSource>>? dataSources;

  /// Configuration block for integrating AWS IAM Identity Center with the OpenSearch application. See IAM Identity Center Options below.
  final Input<ApplicationIamIdentityCenterOptions>? iamIdentityCenterOptions;

  /// ARN of the KMS key used to encrypt the application's data at rest.
  final Input<String>? kmsKeyArn;

  /// The unique name of the OpenSearch application. Names must be unique within an AWS Region for each account. Must be between 3 and 30 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ApplicationTimeouts2>? timeouts;

  ApplicationArgs8({
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
      map['appConfigs'] = Input.mapOptionalInputValue<
              List<ApplicationAppConfig>, List<Map<String, dynamic>>>(
          appConfigsValue,
          (value) =>
              Input.encodeList<ApplicationAppConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final dataSourcesValue = dataSources;
    if (dataSourcesValue != null) {
      map['dataSources'] = Input.mapOptionalInputValue<
              List<ApplicationDataSource>, List<Map<String, dynamic>>>(
          dataSourcesValue,
          (value) =>
              Input.encodeList<ApplicationDataSource, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final iamIdentityCenterOptionsValue = iamIdentityCenterOptions;
    if (iamIdentityCenterOptionsValue != null) {
      map['iamIdentityCenterOptions'] = Input.mapOptionalInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<ApplicationTimeouts2,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApplicationArgs8.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs8(
      appConfigs:
          Input.asOptionalInput<List<ApplicationAppConfig>>(map['appConfigs']),
      dataSources: Input.asOptionalInput<List<ApplicationDataSource>>(
          map['dataSources']),
      iamIdentityCenterOptions:
          Input.asOptionalInput<ApplicationIamIdentityCenterOptions>(
              map['iamIdentityCenterOptions']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ApplicationTimeouts2>(map['timeouts']),
    );
  }
}
