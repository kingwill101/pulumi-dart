// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolPrivatePoolOptions {
  /// The ID of the private node pool.
  final pulumi.Input<String>? privatePoolOptionsId;

  /// The type of private node pool. This parameter specifies the type of the private pool that you want to use to create instances. A private node pool is generated when an elasticity assurance or a capacity reservation service takes effect. The system selects a private node pool to launch instances. Valid values: `Open`: specifies an open private node pool. The system selects an open private node pool to launch instances. If no matching open private node pool is available, the resources in the public node pool are used. `Target`: specifies a private node pool. The system uses the resources of the specified private node pool to launch instances. If the specified private node pool is unavailable, instances cannot be started. `None`: no private node pool is used. The resources of private node pools are not used to launch the instances.
  final pulumi.Input<String>? privatePoolOptionsMatchCriteria;

  /// Creates a new [NodePoolPrivatePoolOptions].
  /// [privatePoolOptionsId] The ID of the private node pool.
  /// [privatePoolOptionsMatchCriteria] The type of private node pool. This parameter specifies the type of the private pool that you want to use to create instances. A private node pool is generated when an elasticity assurance or a capacity reservation service takes effect. The system selects a private node pool to launch instances. Valid values: `Open`: specifies an open private node pool. The system selects an open private node pool to launch instances. If no matching open private node pool is available, the resources in the public node pool are used. `Target`: specifies a private node pool. The system uses the resources of the specified private node pool to launch instances. If the specified private node pool is unavailable, instances cannot be started. `None`: no private node pool is used. The resources of private node pools are not used to launch the instances.
  NodePoolPrivatePoolOptions({
    this.privatePoolOptionsId,
    this.privatePoolOptionsMatchCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privatePoolOptionsId': ?privatePoolOptionsId,
      'privatePoolOptionsMatchCriteria': ?privatePoolOptionsMatchCriteria,
    };
  }

  factory NodePoolPrivatePoolOptions.fromMap(Map<String, dynamic> map) {
    return NodePoolPrivatePoolOptions(
      privatePoolOptionsId: (() {
        final guardedValue = map['privatePoolOptionsId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privatePoolOptionsMatchCriteria: (() {
        final guardedValue = map['privatePoolOptionsMatchCriteria'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
