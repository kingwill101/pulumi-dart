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
  final pulumi.Input<List<String>>? regions;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Maps account key to use for signing. Picking `primaryKey` or `secondaryKey` will use the Maps account Shared Keys, and using `managedIdentity` will use the auto-renewed private key to sign the SAS.
  final pulumi.Input<String> signingKey;
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
    required String accountName,
    required String expiry,
    required int maxRatePerSecond,
    required String principalId,
    List<String>? regions,
    required String resourceGroupName,
    required String signingKey,
    required String start,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      expiry = pulumi.Input.asInput<String>(expiry),
      maxRatePerSecond = pulumi.Input.asInput<int>(maxRatePerSecond),
      principalId = pulumi.Input.asInput<String>(principalId),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      signingKey = pulumi.Input.asInput<String>(signingKey),
      start = pulumi.Input.asInput<String>(start);

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
      accountName: map['accountName'] as String,
      expiry: map['expiry'] as String,
      maxRatePerSecond: map['maxRatePerSecond'] as int,
      principalId: map['principalId'] as String,
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      signingKey: map['signingKey'] as String,
      start: map['start'] as String,
    );
  }
}

