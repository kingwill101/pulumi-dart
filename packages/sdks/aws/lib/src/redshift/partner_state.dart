// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Partner resources.
class PartnerState {
  /// The Amazon Web Services account ID that owns the cluster.
  final pulumi.Input<String>? accountId;
  /// The cluster identifier of the cluster that receives data from the partner.
  final pulumi.Input<String>? clusterIdentifier;
  /// The name of the database that receives data from the partner.
  final pulumi.Input<String>? databaseName;
  /// The name of the partner that is authorized to send data.
  final pulumi.Input<String>? partnerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// (Optional) The partner integration status.
  final pulumi.Input<String>? status;
  /// (Optional) The status message provided by the partner.
  final pulumi.Input<String>? statusMessage;

  /// Creates a new [PartnerState].
  /// [accountId] The Amazon Web Services account ID that owns the cluster.
  /// [clusterIdentifier] The cluster identifier of the cluster that receives data from the partner.
  /// [databaseName] The name of the database that receives data from the partner.
  /// [partnerName] The name of the partner that is authorized to send data.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] (Optional) The partner integration status.
  /// [statusMessage] (Optional) The status message provided by the partner.
  PartnerState({
    this.accountId,
    this.clusterIdentifier,
    this.databaseName,
    this.partnerName,
    this.region,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'clusterIdentifier': ?clusterIdentifier,
      'databaseName': ?databaseName,
      'partnerName': ?partnerName,
      'region': ?region,
      'status': ?status,
      'statusMessage': ?statusMessage,
    };
  }

  factory PartnerState.fromMap(Map<String, dynamic> map) {
    return PartnerState(
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : ((map['clusterIdentifier'] as String).input()).input(),
      databaseName: map['databaseName'] == null ? null : ((map['databaseName'] as String).input()).input(),
      partnerName: map['partnerName'] == null ? null : ((map['partnerName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      statusMessage: map['statusMessage'] == null ? null : ((map['statusMessage'] as String).input()).input(),
    );
  }
}

