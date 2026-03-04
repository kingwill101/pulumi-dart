// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EngineNamespace resources.
class EngineNamespaceState {
  /// The language type of the returned information. Valid values: `zh`, `en`.
  final pulumi.Input<String>? acceptLanguage;

  /// The id of the cluster.It is formatted to `mse-xxxxxxxx`.
  final pulumi.Input<String>? clusterId;

  /// The instance id of the cluster. It is formatted to `mse-cn-xxxxxxxxxxx`.Available since v1.232.0.
  final pulumi.Input<String>? instanceId;

  /// The description of the namespace.
  ///
  /// **NOTE:** You must set `cluster_id` or `instance_id` or both.
  final pulumi.Input<String>? namespaceDesc;

  /// The id of Namespace.
  final pulumi.Input<String>? namespaceId;

  /// The name of the Engine Namespace.
  final pulumi.Input<String>? namespaceShowName;

  /// Creates a new [EngineNamespaceState].
  /// [acceptLanguage] The language type of the returned information. Valid values: `zh`, `en`.
  /// [clusterId] The id of the cluster.It is formatted to `mse-xxxxxxxx`.
  /// [instanceId] The instance id of the cluster. It is formatted to `mse-cn-xxxxxxxxxxx`.Available since v1.232.0.
  /// [namespaceDesc] The description of the namespace.
  /// [namespaceId] The id of Namespace.
  /// [namespaceShowName] The name of the Engine Namespace.
  EngineNamespaceState({
    this.acceptLanguage,
    this.clusterId,
    this.instanceId,
    this.namespaceDesc,
    this.namespaceId,
    this.namespaceShowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'clusterId': ?clusterId,
      'instanceId': ?instanceId,
      'namespaceDesc': ?namespaceDesc,
      'namespaceId': ?namespaceId,
      'namespaceShowName': ?namespaceShowName,
    };
  }

  factory EngineNamespaceState.fromMap(Map<String, dynamic> map) {
    return EngineNamespaceState(
      acceptLanguage: (() {
        final guardedValue = map['acceptLanguage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceDesc: (() {
        final guardedValue = map['namespaceDesc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceId: (() {
        final guardedValue = map['namespaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceShowName: (() {
        final guardedValue = map['namespaceShowName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
