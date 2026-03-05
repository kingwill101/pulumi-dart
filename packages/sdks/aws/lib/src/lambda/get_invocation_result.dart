// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInvocation.
class GetInvocationResult {
  final String functionName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String input;
  final String? qualifier;
  final String region;
  /// String result of the Lambda function invocation.
  final String result;
  final String? tenantId;

  /// Creates a new [GetInvocationResult].
  /// [functionName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [input] Required.
  /// [qualifier] Optional.
  /// [region] Required.
  /// [result] String result of the Lambda function invocation.
  /// [tenantId] Optional.
  GetInvocationResult({
    required this.functionName,
    required this.id,
    required this.input,
    this.qualifier,
    required this.region,
    required this.result,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'id': id,
      'input': input,
      'qualifier': ?qualifier,
      'region': region,
      'result': result,
      'tenantId': ?tenantId,
    };
  }

  factory GetInvocationResult.fromMap(Map<String, dynamic> map) {
    return GetInvocationResult(
      functionName: map['functionName'] as String,
      id: map['id'] as String,
      input: map['input'] as String,
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      result: map['result'] as String,
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

