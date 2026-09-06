// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maps_list_account_sas_args_doc}
/// Arguments for listAccountSas.
/// {@endtemplate}
/// {@macro pulumi_maps_list_account_sas_args_doc}
class ListAccountSasArgs {
  /// The name of the Maps Account.
  final pulumi.Input<String> accountName;
  /// The date time offset of when the token validity expires. For example "2017-05-24T10:42:03.1567373Z". Maximum duration allowed is 24 hours between `start` and `expiry`.
  final pulumi.Input<String> expiry;
  /// Required parameter which represents the desired maximum request per second to allowed for the given SAS token. This does not guarantee perfect accuracy in measurements but provides application safe guards of abuse with eventual enforcement.
  final pulumi.Input<int> maxRatePerSecond;
  /// The principal Id also known as the object Id of a User Assigned Managed Identity currently assigned to the Maps Account. To assign a Managed Identity of the account, use operation Create or Update an assign a User Assigned Identity resource Id.
  final pulumi.Input<String> principalId;
  /// Optional, allows control of which region locations are permitted access to Azure Maps REST APIs with the SAS token. Example: "eastus", "westus2". Omitting this parameter will allow all region locations to be accessible.
  final pulumi.Input<List<String>?>? regions;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Maps account key to use for signing. Picking `primaryKey` or `secondaryKey` will use the Maps account Shared Keys, and using `managedIdentity` will use the auto-renewed private key to sign the SAS.
  final pulumi.Input<dynamic> signingKey;
  /// The date time offset of when the token validity begins. For example "2017-05-24T10:42:03.1567373Z". Maximum duration allowed is 24 hours between `start` and `expiry`.
  final pulumi.Input<String> start;

  /// Creates a new [ListAccountSasArgs].
  /// [accountName] The name of the Maps Account.
  /// [expiry] The date time offset of when the token validity expires. For example "2017-05-24T10:42:03.1567373Z". Maximum duration allowed is 24 hours between `start` and `expiry`.
  /// [maxRatePerSecond] Required parameter which represents the desired maximum request per second to allowed for the given SAS token. This does not guarantee perfect accuracy in measurements but provides application safe guards of abuse with eventual enforcement.
  /// [principalId] The principal Id also known as the object Id of a User Assigned Managed Identity currently assigned to the Maps Account. To assign a Managed Identity of the account, use operation Create or Update an assign a User Assigned Identity resource Id.
  /// [regions] Optional, allows control of which region locations are permitted access to Azure Maps REST APIs with the SAS token. Example: "eastus", "westus2". Omitting this parameter will allow all region locations to be accessible.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [signingKey] The Maps account key to use for signing. Picking `primaryKey` or `secondaryKey` will use the Maps account Shared Keys, and using `managedIdentity` will use the auto-renewed private key to sign the SAS.
  /// [start] The date time offset of when the token validity begins. For example "2017-05-24T10:42:03.1567373Z". Maximum duration allowed is 24 hours between `start` and `expiry`.
  ListAccountSasArgs({
    required this.accountName,
    required this.expiry,
    pulumi.Input<int>? maxRatePerSecond,
    required this.principalId,
    this.regions,
    required this.resourceGroupName,
    required this.signingKey,
    required this.start,
  }) : maxRatePerSecond = maxRatePerSecond ?? pulumi.Input.fromValue(500);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'expiry': expiry,
      'maxRatePerSecond': maxRatePerSecond,
      'principalId': principalId,
      'regions': ?regions,
      'resourceGroupName': resourceGroupName,
      'signingKey': signingKey,
      'start': start,
    };
  }

  factory ListAccountSasArgs.fromMap(Map<String, dynamic> map) {
    return ListAccountSasArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      expiry: pulumi.Input.fromValue(map['expiry'] as String),
      maxRatePerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxRatePerSecond'])),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      signingKey: pulumi.Input.fromValue(map['signingKey']),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}
