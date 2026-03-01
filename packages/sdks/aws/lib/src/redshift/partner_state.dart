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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? partnerName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusMessage,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      partnerName = pulumi.Input.asOptionalInput<String>(partnerName),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessage = pulumi.Input.asOptionalInput<String>(statusMessage);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      partnerName: map['partnerName'] == null ? null : pulumi.Output.create<String>(map['partnerName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusMessage: map['statusMessage'] == null ? null : pulumi.Output.create<String>(map['statusMessage'] as String),
    );
  }
}

