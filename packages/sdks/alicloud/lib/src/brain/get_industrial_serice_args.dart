// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_brain_get_industrial_serice_get_industrial_serice_args_doc}
/// Arguments for getIndustrialSerice.
/// {@endtemplate}
/// {@macro pulumi_brain_get_industrial_serice_get_industrial_serice_args_doc}
class GetIndustrialSericeArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  ///
  /// > **NOTE:** Setting `enable = "On"` to open the Brain Industrial service. The service can not closed once it is opened.
  final pulumi.Input<String>? enable;

  /// Creates a new [GetIndustrialSericeArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  GetIndustrialSericeArgs({
    pulumi.Output<String>? enable,
  }) :
      enable = pulumi.Input.asOptionalInput<String>(enable);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory GetIndustrialSericeArgs.fromMap(Map<String, dynamic> map) {
    return GetIndustrialSericeArgs(
      enable: map['enable'] == null ? null : pulumi.Output.create<String>(map['enable'] as String),
    );
  }
}

