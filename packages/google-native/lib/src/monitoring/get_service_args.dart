// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_service_args_doc}
class GetServiceArgs {
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> v3Id;
  final pulumi.Input<String> v3Id1;

  /// Creates a new [GetServiceArgs].
  /// [serviceId] Required.
  /// [v3Id] Required.
  /// [v3Id1] Required.
  GetServiceArgs({
    required String serviceId,
    required String v3Id,
    required String v3Id1,
  })  : serviceId = pulumi.Input.asInput<String>(serviceId),
        v3Id = pulumi.Input.asInput<String>(v3Id),
        v3Id1 = pulumi.Input.asInput<String>(v3Id1);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceId'] = serviceId;
    map['v3Id'] = v3Id;
    map['v3Id1'] = v3Id1;
    return map;
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      serviceId: map['serviceId'] as String,
      v3Id: map['v3Id'] as String,
      v3Id1: map['v3Id1'] as String,
    );
  }
}
