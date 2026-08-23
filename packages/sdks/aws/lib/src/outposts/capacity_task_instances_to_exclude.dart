// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityTaskInstancesToExclude {
  /// Set of EC2 instance IDs (of user-owned instances running on the Outpost) that the capacity task must not stop. At least one instance ID is required.
  final pulumi.Input<List<String>> instances;

  /// Creates a new [CapacityTaskInstancesToExclude].
  /// [instances] Set of EC2 instance IDs (of user-owned instances running on the Outpost) that the capacity task must not stop. At least one instance ID is required.
  const CapacityTaskInstancesToExclude({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': instances,
    };
  }

  factory CapacityTaskInstancesToExclude.fromMap(Map<String, dynamic> map) {
    return CapacityTaskInstancesToExclude(
      instances: pulumi.Input.fromValue((map['instances'] as List).cast<String>()),
    );
  }
}
