// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_response.dart';

/// Result data returned by listCapacityPoolVolumeReplications.
class ListCapacityPoolVolumeReplicationsResult {
  /// A list of replications
  final List<ReplicationResponse>? value;

  /// Creates a new [ListCapacityPoolVolumeReplicationsResult].
  /// [value] A list of replications
  const ListCapacityPoolVolumeReplicationsResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ReplicationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListCapacityPoolVolumeReplicationsResult.fromMap(Map<String, dynamic> map) {
    return ListCapacityPoolVolumeReplicationsResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReplicationResponse>(guardedValue, (value) => ReplicationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
