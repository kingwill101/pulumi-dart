// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFunctions.
class GetFunctionsResult {
  /// List of Lambda Function ARNs.
  final List<String>? functionArns;
  /// List of Lambda Function names.
  final List<String>? functionNames;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetFunctionsResult].
  /// [functionArns] List of Lambda Function ARNs.
  /// [functionNames] List of Lambda Function names.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetFunctionsResult({
    this.functionArns,
    this.functionNames,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArns': ?functionArns,
      'functionNames': ?functionNames,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetFunctionsResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionsResult(
      functionArns: (() { final guardedValue = map['functionArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      functionNames: (() { final guardedValue = map['functionNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
