// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_settings_settings.dart';

/// {@template pulumi_apigateway_method_settings_method_settings_args_doc}
/// The set of arguments for MethodSettings.
/// {@endtemplate}
/// {@macro pulumi_apigateway_method_settings_method_settings_args_doc}
class MethodSettingsArgs {
  /// Method path defined as `{resource_path}/{http_method}` for an individual method override, or `*/*` for overriding all methods in the stage. Ensure to trim any leading forward slashes in the path (e.g., `trimprefix(aws_api_gateway_resource.example.path, "/")`).
  final pulumi.Input<String> methodPath;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the REST API
  final pulumi.Input<String> restApi;
  /// Settings block, see below.
  final pulumi.Input<MethodSettingsSettings> settings;
  /// Name of the stage
  final pulumi.Input<String> stageName;

  /// Creates a new [MethodSettingsArgs].
  /// [methodPath] Method path defined as `{resource_path}/{http_method}` for an individual method override, or `*/*` for overriding all methods in the stage. Ensure to trim any leading forward slashes in the path (e.g., `trimprefix(aws_api_gateway_resource.example.path, "/")`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the REST API
  /// [settings] Settings block, see below.
  /// [stageName] Name of the stage
  MethodSettingsArgs({
    required this.methodPath,
    this.region,
    required this.restApi,
    required this.settings,
    required this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodPath': methodPath,
      'region': ?region,
      'restApi': restApi,
      'settings': pulumi.Input.mapInputValue<MethodSettingsSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'stageName': stageName,
    };
  }

  factory MethodSettingsArgs.fromMap(Map<String, dynamic> map) {
    return MethodSettingsArgs(
      methodPath: (map['methodPath'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      restApi: (map['restApi'] as String).input(),
      settings: (MethodSettingsSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())).input(),
      stageName: (map['stageName'] as String).input(),
    );
  }
}

