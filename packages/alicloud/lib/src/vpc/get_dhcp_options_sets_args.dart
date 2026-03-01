// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_dhcp_options_sets_get_dhcp_options_sets_args_doc}
/// Arguments for getDhcpOptionsSets.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_dhcp_options_sets_get_dhcp_options_sets_args_doc}
class GetDhcpOptionsSetsArgs {
  /// The name of the DHCP options set.The name must be 2 to 128 characters in length and can contain letters, Chinese characters, digits, underscores (_), and hyphens (-). It must start with a letter or a Chinese character.
  final pulumi.Input<String>? dhcpOptionsSetName;
  /// The root domain, for example, example.com. After a DHCP options set is associated with a Virtual Private Cloud (VPC) network, the root domain in the DHCP options set is automatically synchronized to the ECS instances in the VPC network.
  final pulumi.Input<String>? domainName;
  /// A list of Dhcp Options Set IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Dhcp Options Set name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the DHCP options set. Valid values: `Available`, `InUse` or `Pending`. `Available`: The DHCP options set is available for use. `InUse`: The DHCP options set is in use. `Pending`: The DHCP options set is being configured.
  final pulumi.Input<String>? status;

  /// Creates a new [GetDhcpOptionsSetsArgs].
  /// [dhcpOptionsSetName] The name of the DHCP options set.The name must be 2 to 128 characters in length and can contain letters, Chinese characters, digits, underscores (_), and hyphens (-). It must start with a letter or a Chinese character.
  /// [domainName] The root domain, for example, example.com. After a DHCP options set is associated with a Virtual Private Cloud (VPC) network, the root domain in the DHCP options set is automatically synchronized to the ECS instances in the VPC network.
  /// [ids] A list of Dhcp Options Set IDs.
  /// [nameRegex] A regex string to filter results by Dhcp Options Set name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the DHCP options set. Valid values: `Available`, `InUse` or `Pending`. `Available`: The DHCP options set is available for use. `InUse`: The DHCP options set is in use. `Pending`: The DHCP options set is being configured.
  GetDhcpOptionsSetsArgs({
    String? dhcpOptionsSetName,
    String? domainName,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? status,
  }) :
      dhcpOptionsSetName = pulumi.Input.asOptionalInput<String>(dhcpOptionsSetName),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptionsSetName': ?dhcpOptionsSetName,
      'domainName': ?domainName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDhcpOptionsSetsArgs.fromMap(Map<String, dynamic> map) {
    return GetDhcpOptionsSetsArgs(
      dhcpOptionsSetName: map['dhcpOptionsSetName'] == null ? null : map['dhcpOptionsSetName'] as String,
      domainName: map['domainName'] == null ? null : map['domainName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

