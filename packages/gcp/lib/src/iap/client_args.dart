// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_client_client_args_doc}
/// The set of arguments for Client.
/// {@endtemplate}
/// {@macro pulumi_iap_client_client_args_doc}
class ClientArgs {
  /// Identifier of the brand to which this client
  /// is attached to. The format is
  /// `projects/{project_number}/brands/{brand_id}`.
  final pulumi.Input<String> brand;
  /// Human-friendly name given to the OAuth client.
  final pulumi.Input<String> displayName;

  /// Creates a new [ClientArgs].
  /// [brand] Identifier of the brand to which this client
  /// [displayName] Human-friendly name given to the OAuth client.
  ClientArgs({
    required String brand,
    required String displayName,
  }) :
      brand = pulumi.Input.asInput<String>(brand),
      displayName = pulumi.Input.asInput<String>(displayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': brand,
      'displayName': displayName,
    };
  }

  factory ClientArgs.fromMap(Map<String, dynamic> map) {
    return ClientArgs(
      brand: map['brand'] as String,
      displayName: map['displayName'] as String,
    );
  }
}

