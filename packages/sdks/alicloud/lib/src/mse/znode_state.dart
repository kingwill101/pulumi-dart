// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Znode resources.
class ZnodeState {
  /// The language type of the returned information. Valid values: `zh` or `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// The ID of the Cluster.
  final pulumi.Input<String>? clusterId;
  /// The Node data.
  final pulumi.Input<String>? data;
  /// The Node path. The value must start with a forward slash (/).
  final pulumi.Input<String>? path;

  /// Creates a new [ZnodeState].
  /// [acceptLanguage] The language type of the returned information. Valid values: `zh` or `en`.
  /// [clusterId] The ID of the Cluster.
  /// [data] The Node data.
  /// [path] The Node path. The value must start with a forward slash (/).
  ZnodeState({
    pulumi.Output<String>? acceptLanguage,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? data,
    pulumi.Output<String>? path,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      data = pulumi.Input.asOptionalInput<String>(data),
      path = pulumi.Input.asOptionalInput<String>(path);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'clusterId': ?clusterId,
      'data': ?data,
      'path': ?path,
    };
  }

  factory ZnodeState.fromMap(Map<String, dynamic> map) {
    return ZnodeState(
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
    );
  }
}

