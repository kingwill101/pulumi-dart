// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_app_config.dart';
import 'application_data_source.dart';
import 'application_iam_identity_center_options.dart';
import 'application_timeouts.dart';

/// {@template pulumi_opensearch_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_opensearch_application_application_args_doc}
class ApplicationArgs {
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
  final pulumi.Input<ApplicationTimeouts>? timeouts;

  /// Creates a new [ApplicationArgs].
  /// [appConfigs] Configuration block(s) for OpenSearch application settings. See App Config below.
  /// [dataSources] Configuration block(s) for data sources to link to the OpenSearch application. See Data Source below.
  /// [iamIdentityCenterOptions] Configuration block for integrating AWS IAM Identity Center with the OpenSearch application. See IAM Identity Center Options below.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the application's data at rest.
  /// [name] The unique name of the OpenSearch application. Names must be unique within an AWS Region for each account. Must be between 3 and 30 characters, start with a lowercase letter, and contain only lowercase letters, numbers, and hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ApplicationArgs({
    List<ApplicationAppConfig>? appConfigs,
    List<ApplicationDataSource>? dataSources,
    ApplicationIamIdentityCenterOptions? iamIdentityCenterOptions,
    String? kmsKeyArn,
    String? name,
    String? region,
    Map<String, String>? tags,
    ApplicationTimeouts? timeouts,
  }) : appConfigs = pulumi.Input.asOptionalInput<List<ApplicationAppConfig>>(
         appConfigs,
       ),
       dataSources = pulumi.Input.asOptionalInput<List<ApplicationDataSource>>(
         dataSources,
       ),
       iamIdentityCenterOptions =
           pulumi.Input.asOptionalInput<ApplicationIamIdentityCenterOptions>(
             iamIdentityCenterOptions,
           ),
       kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeouts = pulumi.Input.asOptionalInput<ApplicationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationAppConfig>,
            List<Map<String, dynamic>>
          >(
            appConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationAppConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dataSources':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationDataSource>,
            List<Map<String, dynamic>>
          >(
            dataSources,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationDataSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'iamIdentityCenterOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationIamIdentityCenterOptions,
            Map<String, dynamic>
          >(iamIdentityCenterOptions, (value) => value.toMap()),
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      appConfigs: map['appConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ApplicationAppConfig>(
              map['appConfigs'],
              (value) => ApplicationAppConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      dataSources: map['dataSources'] == null
          ? null
          : pulumi.Input.decodeList<ApplicationDataSource>(
              map['dataSources'],
              (value) => ApplicationDataSource.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      iamIdentityCenterOptions: map['iamIdentityCenterOptions'] == null
          ? null
          : ApplicationIamIdentityCenterOptions.fromMap(
              (map['iamIdentityCenterOptions'] as Map).cast<String, dynamic>(),
            ),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ApplicationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
