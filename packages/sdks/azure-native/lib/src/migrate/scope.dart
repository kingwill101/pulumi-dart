// ignore_for_file: unused_element, unnecessary_cast


/// Scope of the assessment.
class Scope {
  /// The ARG query.
  final String? azureResourceGraphQuery;
  /// The scope type
  final String? scopeType;
  /// The server group arm id.
  final String? serverGroupId;

  /// Creates a new [Scope].
  /// [azureResourceGraphQuery] The ARG query.
  /// [scopeType] The scope type
  /// [serverGroupId] The server group arm id.
  Scope({
    this.azureResourceGraphQuery,
    this.scopeType,
    this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceGraphQuery': ?azureResourceGraphQuery,
      'scopeType': ?scopeType,
      'serverGroupId': ?serverGroupId,
    };
  }

  factory Scope.fromMap(Map<String, dynamic> map) {
    return Scope(
      azureResourceGraphQuery: map['azureResourceGraphQuery'] == null ? null : map['azureResourceGraphQuery'] as String,
      scopeType: map['scopeType'] == null ? null : map['scopeType'] as String,
      serverGroupId: map['serverGroupId'] == null ? null : map['serverGroupId'] as String,
    );
  }
}

