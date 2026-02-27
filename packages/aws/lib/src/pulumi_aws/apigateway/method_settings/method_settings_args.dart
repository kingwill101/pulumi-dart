// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../method_settings_settings/method_settings_settings.dart';

/// The set of arguments for MethodSettings.
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

  MethodSettingsArgs({
    required this.methodPath,
    this.region,
    required this.restApi,
    required this.settings,
    required this.stageName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['methodPath'] = methodPath;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApi'] = restApi;
    map['settings'] = pulumi.Input.mapInputValue<MethodSettingsSettings,
        Map<String, dynamic>>(settings, (value) => value.toMap());
    map['stageName'] = stageName;
    return map;
  }

  factory MethodSettingsArgs.fromMap(Map<String, dynamic> map) {
    return MethodSettingsArgs(
      methodPath: pulumi.Input.asInput<String>(map['methodPath']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restApi: pulumi.Input.asInput<String>(map['restApi']),
      settings: pulumi.Input.asInput<MethodSettingsSettings>(map['settings']),
      stageName: pulumi.Input.asInput<String>(map['stageName']),
    );
  }
}
