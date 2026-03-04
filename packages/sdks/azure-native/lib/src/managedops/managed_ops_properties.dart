// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'desired_configuration.dart';

/// Properties of the ManagedOps resource.
class ManagedOpsProperties {
  /// Desired configuration input by the user.
  final pulumi.Input<DesiredConfiguration> desiredConfiguration;

  /// Creates a new [ManagedOpsProperties].
  /// [desiredConfiguration] Desired configuration input by the user.
  ManagedOpsProperties({required this.desiredConfiguration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredConfiguration':
          pulumi.Input.mapInputValue<
            DesiredConfiguration,
            Map<String, dynamic>
          >(desiredConfiguration, (value) => value.toMap()),
    };
  }

  factory ManagedOpsProperties.fromMap(Map<String, dynamic> map) {
    return ManagedOpsProperties(
      desiredConfiguration: pulumi.Input.fromValue(
        DesiredConfiguration.fromMap(
          (map['desiredConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
