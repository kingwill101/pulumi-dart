// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFunction.
class GetFunctionResult {
  /// ARN of the function.
  final String? arn;
  final String? functionName;
  /// ID of the newest revision of the function.
  final String? latestRevisionId;
  final String? region;
  /// Current state of the function.
  final String? state;
  /// Reason for the current state.
  final String? stateReason;
  /// Map of tags assigned to the function.
  final Map<String, String>? tags;

  /// Creates a new [GetFunctionResult].
  /// [arn] ARN of the function.
  /// [functionName] Optional.
  /// [latestRevisionId] ID of the newest revision of the function.
  /// [region] Optional.
  /// [state] Current state of the function.
  /// [stateReason] Reason for the current state.
  /// [tags] Map of tags assigned to the function.
  const GetFunctionResult({
    this.arn,
    this.functionName,
    this.latestRevisionId,
    this.region,
    this.state,
    this.stateReason,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'functionName': ?functionName,
      'latestRevisionId': ?latestRevisionId,
      'region': ?region,
      'state': ?state,
      'stateReason': ?stateReason,
      'tags': ?tags,
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestRevisionId: (() { final guardedValue = map['latestRevisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
