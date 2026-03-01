// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the provider properties.
class HanaDbProviderInstancePropertiesResponse {
  /// Gets or sets the hana database name.
  final String? dbName;
  /// Gets or sets the database password.
  final String? dbPassword;
  /// Gets or sets the key vault URI to secret with the database password.
  final String? dbPasswordUri;
  /// Gets or sets the database user name.
  final String? dbUsername;
  /// Gets or sets the target virtual machine size.
  final String? hostname;
  /// Gets or sets the database instance number.
  final String? instanceNumber;
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'SapHana'.
  final String providerType;
  /// Gets or sets the SAP System Identifier.
  final String? sapSid;
  /// Gets or sets the database sql port.
  final String? sqlPort;
  /// Gets or sets the blob URI to SSL certificate for the DB.
  final String? sslCertificateUri;
  /// Gets or sets the hostname(s) in the SSL certificate.
  final String? sslHostNameInCertificate;
  /// Gets or sets certificate preference if secure communication is enabled.
  final String? sslPreference;

  /// Creates a new [HanaDbProviderInstancePropertiesResponse].
  /// [dbName] Gets or sets the hana database name.
  /// [dbPassword] Gets or sets the database password.
  /// [dbPasswordUri] Gets or sets the key vault URI to secret with the database password.
  /// [dbUsername] Gets or sets the database user name.
  /// [hostname] Gets or sets the target virtual machine size.
  /// [instanceNumber] Gets or sets the database instance number.
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sapSid] Gets or sets the SAP System Identifier.
  /// [sqlPort] Gets or sets the database sql port.
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the DB.
  /// [sslHostNameInCertificate] Gets or sets the hostname(s) in the SSL certificate.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  HanaDbProviderInstancePropertiesResponse({
    this.dbName,
    this.dbPassword,
    this.dbPasswordUri,
    this.dbUsername,
    this.hostname,
    this.instanceNumber,
    required this.providerType,
    this.sapSid,
    this.sqlPort,
    this.sslCertificateUri,
    this.sslHostNameInCertificate,
    this.sslPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbName': ?dbName,
      'dbPassword': ?dbPassword,
      'dbPasswordUri': ?dbPasswordUri,
      'dbUsername': ?dbUsername,
      'hostname': ?hostname,
      'instanceNumber': ?instanceNumber,
      'providerType': providerType,
      'sapSid': ?sapSid,
      'sqlPort': ?sqlPort,
      'sslCertificateUri': ?sslCertificateUri,
      'sslHostNameInCertificate': ?sslHostNameInCertificate,
      'sslPreference': ?sslPreference,
    };
  }

  factory HanaDbProviderInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HanaDbProviderInstancePropertiesResponse(
      dbName: map['dbName'] == null ? null : map['dbName'] as String,
      dbPassword: map['dbPassword'] == null ? null : map['dbPassword'] as String,
      dbPasswordUri: map['dbPasswordUri'] == null ? null : map['dbPasswordUri'] as String,
      dbUsername: map['dbUsername'] == null ? null : map['dbUsername'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      instanceNumber: map['instanceNumber'] == null ? null : map['instanceNumber'] as String,
      providerType: map['providerType'] as String,
      sapSid: map['sapSid'] == null ? null : map['sapSid'] as String,
      sqlPort: map['sqlPort'] == null ? null : map['sqlPort'] as String,
      sslCertificateUri: map['sslCertificateUri'] == null ? null : map['sslCertificateUri'] as String,
      sslHostNameInCertificate: map['sslHostNameInCertificate'] == null ? null : map['sslHostNameInCertificate'] as String,
      sslPreference: map['sslPreference'] == null ? null : map['sslPreference'] as String,
    );
  }
}

