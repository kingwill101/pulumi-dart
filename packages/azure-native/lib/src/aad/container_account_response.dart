// ignore_for_file: unused_element, unnecessary_cast


/// Container Account Description
class ContainerAccountResponse {
  /// The account name
  final String? accountName;
  /// The account password
  final String? password;
  /// The account spn
  final String? spn;

  /// Creates a new [ContainerAccountResponse].
  /// [accountName] The account name
  /// [password] The account password
  /// [spn] The account spn
  ContainerAccountResponse({
    this.accountName,
    this.password,
    this.spn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'password': ?password,
      'spn': ?spn,
    };
  }

  factory ContainerAccountResponse.fromMap(Map<String, dynamic> map) {
    return ContainerAccountResponse(
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      spn: map['spn'] == null ? null : map['spn'] as String,
    );
  }
}

