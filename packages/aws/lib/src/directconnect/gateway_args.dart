// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_directconnect_gateway_gateway_args_doc}
class GatewayArgs {
  /// The ASN to be configured on the Amazon side of the connection. The ASN must be in the private range of 64,512 to 65,534 or 4,200,000,000 to 4,294,967,294.
  final pulumi.Input<String> amazonSideAsn;

  /// The name of the connection.
  final pulumi.Input<String>? name;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GatewayArgs].
  /// [amazonSideAsn] The ASN to be configured on the Amazon side of the connection. The ASN must be in the private range of 64,512 to 65,534 or 4,200,000,000 to 4,294,967,294.
  /// [name] The name of the connection.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  GatewayArgs({
    required String amazonSideAsn,
    String? name,
    Map<String, String>? tags,
  })  : amazonSideAsn = pulumi.Input.asInput<String>(amazonSideAsn),
        name = pulumi.Input.asOptionalInput<String>(name),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amazonSideAsn'] = amazonSideAsn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      amazonSideAsn: map['amazonSideAsn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
