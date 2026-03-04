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
    this.dhcpOptionsSetName,
    this.domainName,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

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
      dhcpOptionsSetName: (() {
        final guardedValue = map['dhcpOptionsSetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
