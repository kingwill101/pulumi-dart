// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBootstrapBrokers.
class GetBootstrapBrokersResult {
  /// Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster.
  final String bootstrapBrokers;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs.
  final String bootstrapBrokersPublicSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs.
  final String bootstrapBrokersPublicSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs.
  final String bootstrapBrokersPublicTls;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs.
  final String bootstrapBrokersSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs.
  final String bootstrapBrokersSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs.
  final String bootstrapBrokersTls;
  /// A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity.
  final String bootstrapBrokersVpcConnectivitySaslIam;
  /// A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity.
  final String bootstrapBrokersVpcConnectivitySaslScram;
  /// A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity.
  final String bootstrapBrokersVpcConnectivityTls;
  final String clusterArn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetBootstrapBrokersResult].
  /// [bootstrapBrokers] Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster.
  /// [bootstrapBrokersPublicSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs.
  /// [bootstrapBrokersPublicSaslScram] One or more DNS names (or IP addresses) and SASL SCRAM port pairs.
  /// [bootstrapBrokersPublicTls] One or more DNS names (or IP addresses) and TLS port pairs.
  /// [bootstrapBrokersSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs.
  /// [bootstrapBrokersSaslScram] One or more DNS names (or IP addresses) and SASL SCRAM port pairs.
  /// [bootstrapBrokersTls] One or more DNS names (or IP addresses) and TLS port pairs.
  /// [bootstrapBrokersVpcConnectivitySaslIam] A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity.
  /// [bootstrapBrokersVpcConnectivitySaslScram] A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity.
  /// [bootstrapBrokersVpcConnectivityTls] A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity.
  /// [clusterArn] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetBootstrapBrokersResult({
    required this.bootstrapBrokers,
    required this.bootstrapBrokersPublicSaslIam,
    required this.bootstrapBrokersPublicSaslScram,
    required this.bootstrapBrokersPublicTls,
    required this.bootstrapBrokersSaslIam,
    required this.bootstrapBrokersSaslScram,
    required this.bootstrapBrokersTls,
    required this.bootstrapBrokersVpcConnectivitySaslIam,
    required this.bootstrapBrokersVpcConnectivitySaslScram,
    required this.bootstrapBrokersVpcConnectivityTls,
    required this.clusterArn,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootstrapBrokers': bootstrapBrokers,
      'bootstrapBrokersPublicSaslIam': bootstrapBrokersPublicSaslIam,
      'bootstrapBrokersPublicSaslScram': bootstrapBrokersPublicSaslScram,
      'bootstrapBrokersPublicTls': bootstrapBrokersPublicTls,
      'bootstrapBrokersSaslIam': bootstrapBrokersSaslIam,
      'bootstrapBrokersSaslScram': bootstrapBrokersSaslScram,
      'bootstrapBrokersTls': bootstrapBrokersTls,
      'bootstrapBrokersVpcConnectivitySaslIam': bootstrapBrokersVpcConnectivitySaslIam,
      'bootstrapBrokersVpcConnectivitySaslScram': bootstrapBrokersVpcConnectivitySaslScram,
      'bootstrapBrokersVpcConnectivityTls': bootstrapBrokersVpcConnectivityTls,
      'clusterArn': clusterArn,
      'id': id,
      'region': region,
    };
  }

  factory GetBootstrapBrokersResult.fromMap(Map<String, dynamic> map) {
    return GetBootstrapBrokersResult(
      bootstrapBrokers: map['bootstrapBrokers'] as String,
      bootstrapBrokersPublicSaslIam: map['bootstrapBrokersPublicSaslIam'] as String,
      bootstrapBrokersPublicSaslScram: map['bootstrapBrokersPublicSaslScram'] as String,
      bootstrapBrokersPublicTls: map['bootstrapBrokersPublicTls'] as String,
      bootstrapBrokersSaslIam: map['bootstrapBrokersSaslIam'] as String,
      bootstrapBrokersSaslScram: map['bootstrapBrokersSaslScram'] as String,
      bootstrapBrokersTls: map['bootstrapBrokersTls'] as String,
      bootstrapBrokersVpcConnectivitySaslIam: map['bootstrapBrokersVpcConnectivitySaslIam'] as String,
      bootstrapBrokersVpcConnectivitySaslScram: map['bootstrapBrokersVpcConnectivitySaslScram'] as String,
      bootstrapBrokersVpcConnectivityTls: map['bootstrapBrokersVpcConnectivityTls'] as String,
      clusterArn: map['clusterArn'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

