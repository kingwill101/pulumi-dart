// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_settings_settings.dart';

/// Input properties used for looking up and filtering MethodSettings resources.
class MethodSettingsState {
  /// Method path defined as `{resource_path}/{http_method}` for an individual method override, or `*/*` for overriding all methods in the stage. Ensure to trim any leading forward slashes in the path (e.g., `trimprefix(aws_api_gateway_resource.example.path, "/")`).
  final pulumi.Input<String>? methodPath;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the REST API
  final pulumi.Input<String>? restApi;
  /// Settings block, see below.
  final pulumi.Input<MethodSettingsSettings>? settings;
  /// Name of the stage
  final pulumi.Input<String>? stageName;

  /// Creates a new [MethodSettingsState].
  /// [methodPath] Method path defined as `{resource_path}/{http_method}` for an individual method override, or `*/*` for overriding all methods in the stage. Ensure to trim any leading forward slashes in the path (e.g., `trimprefix(aws_api_gateway_resource.example.path, "/")`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the REST API
  /// [settings] Settings block, see below.
  /// [stageName] Name of the stage
  MethodSettingsState({
    pulumi.Output<String>? methodPath,
    pulumi.Output<String>? region,
    pulumi.Output<String>? restApi,
    pulumi.Output<MethodSettingsSettings>? settings,
    pulumi.Output<String>? stageName,
  }) :
      methodPath = pulumi.Input.asOptionalInput<String>(methodPath),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApi = pulumi.Input.asOptionalInput<String>(restApi),
      settings = pulumi.Input.asOptionalInput<MethodSettingsSettings>(settings),
      stageName = pulumi.Input.asOptionalInput<String>(stageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methodPath': ?methodPath,
      'region': ?region,
      'restApi': ?restApi,
      'settings': ?pulumi.Input.mapOptionalInputValue<MethodSettingsSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'stageName': ?stageName,
    };
  }

  factory MethodSettingsState.fromMap(Map<String, dynamic> map) {
    return MethodSettingsState(
      methodPath: map['methodPath'] == null ? null : pulumi.Output.create<String>(map['methodPath'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApi: map['restApi'] == null ? null : pulumi.Output.create<String>(map['restApi'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<MethodSettingsSettings>(MethodSettingsSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())),
      stageName: map['stageName'] == null ? null : pulumi.Output.create<String>(map['stageName'] as String),
    );
  }
}

