// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecServiceLogDestinationOpenSearchBasicAuth {
  /// Password for user defined in User. Is required when endpoint is set. Cannot be set if using a DigitalOcean DBaaS OpenSearch cluster.
  final String? password;
  /// Username to authenticate with. Only required when endpoint is set. Defaults to doadmin when cluster_name is set.
  final String? user;

  /// Creates a new [GetAppSpecServiceLogDestinationOpenSearchBasicAuth].
  /// [password] Password for user defined in User. Is required when endpoint is set. Cannot be set if using a DigitalOcean DBaaS OpenSearch cluster.
  /// [user] Username to authenticate with. Only required when endpoint is set. Defaults to doadmin when cluster_name is set.
  GetAppSpecServiceLogDestinationOpenSearchBasicAuth({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'user': ?user,
    };
  }

  factory GetAppSpecServiceLogDestinationOpenSearchBasicAuth.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceLogDestinationOpenSearchBasicAuth(
      password: map['password'] == null ? null : map['password'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

