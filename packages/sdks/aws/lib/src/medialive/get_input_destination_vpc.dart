// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInputDestinationVpc {
  final pulumi.Input<String> availabilityZone;
  final pulumi.Input<String> networkInterfaceId;

  /// Creates a new [GetInputDestinationVpc].
  /// [availabilityZone] Required.
  /// [networkInterfaceId] Required.
  GetInputDestinationVpc({
    required this.availabilityZone,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'networkInterfaceId': networkInterfaceId,
    };
  }

  factory GetInputDestinationVpc.fromMap(Map<String, dynamic> map) {
    return GetInputDestinationVpc(
      availabilityZone: pulumi.Input.fromValue(
        map['availabilityZone'] as String,
      ),
      networkInterfaceId: pulumi.Input.fromValue(
        map['networkInterfaceId'] as String,
      ),
    );
  }
}
