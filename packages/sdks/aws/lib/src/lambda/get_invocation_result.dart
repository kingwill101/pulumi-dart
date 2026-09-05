// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInvocation.
class GetInvocationResult {
  final String? functionName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? input;
  final String? qualifier;
  final String? region;
  /// String result of the Lambda function invocation.
  final String? result;
  final String? tenantId;

  /// Creates a new [GetInvocationResult].
  /// [functionName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [input] Optional.
  /// [qualifier] Optional.
  /// [region] Optional.
  /// [result] String result of the Lambda function invocation.
  /// [tenantId] Optional.
  const GetInvocationResult({
    this.functionName,
    this.id,
    this.input,
    this.qualifier,
    this.region,
    this.result,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': ?functionName,
      'id': ?id,
      'input': ?input,
      'qualifier': ?qualifier,
      'region': ?region,
      'result': ?result,
      'tenantId': ?tenantId,
    };
  }

  factory GetInvocationResult.fromMap(Map<String, dynamic> map) {
    return GetInvocationResult(
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return guardedValue as String; })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
