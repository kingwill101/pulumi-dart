// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemanagement_v1_get_config_args_doc}
/// Arguments for getConfig.
/// {@endtemplate}
/// {@macro pulumi_servicemanagement_v1_get_config_args_doc}
class GetConfigArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<String> serviceName;
  final pulumi.Input<String>? view;

  /// Creates a new [GetConfigArgs].
  /// [configId] Required.
  /// [serviceName] Required.
  /// [view] Optional.
  GetConfigArgs({
    required String configId,
    required String serviceName,
    String? view,
  })  : configId = pulumi.Input.asInput<String>(configId),
        serviceName = pulumi.Input.asInput<String>(serviceName),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    map['serviceName'] = serviceName;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs(
      configId: map['configId'] as String,
      serviceName: map['serviceName'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
