// ignore_for_file: unused_element, unnecessary_cast


class GetDelegatedAdministratorsAdministrator {
  /// The ID of the member account.
  final String accountId;
  /// The time when the member was specified as a delegated administrator account.
  final String delegationEnabledTime;
  /// The ID of the Delegated Administrator.
  final String id;
  /// The identity of the trusted service.
  final String servicePrincipal;

  /// Creates a new [GetDelegatedAdministratorsAdministrator].
  /// [accountId] The ID of the member account.
  /// [delegationEnabledTime] The time when the member was specified as a delegated administrator account.
  /// [id] The ID of the Delegated Administrator.
  /// [servicePrincipal] The identity of the trusted service.
  GetDelegatedAdministratorsAdministrator({
    required this.accountId,
    required this.delegationEnabledTime,
    required this.id,
    required this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'delegationEnabledTime': delegationEnabledTime,
      'id': id,
      'servicePrincipal': servicePrincipal,
    };
  }

  factory GetDelegatedAdministratorsAdministrator.fromMap(Map<String, dynamic> map) {
    return GetDelegatedAdministratorsAdministrator(
      accountId: map['accountId'] as String,
      delegationEnabledTime: map['delegationEnabledTime'] as String,
      id: map['id'] as String,
      servicePrincipal: map['servicePrincipal'] as String,
    );
  }
}

