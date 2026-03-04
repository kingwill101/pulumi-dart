// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role.dart';

/// Describes the compute profile.
class ComputeProfile {
  /// The list of roles in the cluster.
  final pulumi.Input<List<Role>>? roles;

  /// Creates a new [ComputeProfile].
  /// [roles] The list of roles in the cluster.
  ComputeProfile({this.roles});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles':
          ?pulumi.Input.mapOptionalInputValue<
            List<Role>,
            List<Map<String, dynamic>>
          >(
            roles,
            (value) => pulumi.Input.encodeList<Role, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory ComputeProfile.fromMap(Map<String, dynamic> map) {
    return ComputeProfile(
      roles: (() {
        final guardedValue = map['roles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Role>(
            guardedValue,
            (value) => Role.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
