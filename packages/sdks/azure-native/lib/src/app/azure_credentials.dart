// ignore_for_file: unused_element, unnecessary_cast


/// Container App credentials.
class AzureCredentials {
  /// Client Id.
  final String? clientId;
  /// Client Secret.
  final String? clientSecret;
  /// Kind of auth github does for deploying the template
  final String? kind;
  /// Subscription Id.
  final String? subscriptionId;
  /// Tenant Id.
  final String? tenantId;

  /// Creates a new [AzureCredentials].
  /// [clientId] Client Id.
  /// [clientSecret] Client Secret.
  /// [kind] Kind of auth github does for deploying the template
  /// [subscriptionId] Subscription Id.
  /// [tenantId] Tenant Id.
  AzureCredentials({
    this.clientId,
    this.clientSecret,
    this.kind,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'kind': ?kind,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory AzureCredentials.fromMap(Map<String, dynamic> map) {
    return AzureCredentials(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

