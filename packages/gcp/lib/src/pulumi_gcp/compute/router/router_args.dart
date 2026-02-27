// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../router_bgp/router_bgp.dart';
import '../router_md5_authentication_keys/router_md5_authentication_keys.dart';
import '../router_params/router_params.dart';

/// The set of arguments for Router.
class RouterArgs {
  /// BGP information specific to this router.
  /// Structure is documented below.
  final pulumi.Input<RouterBgp>? bgp;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Indicates if a router is dedicated for use with encrypted VLAN
  /// attachments (interconnectAttachments).
  final pulumi.Input<bool>? encryptedInterconnectRouter;

  /// Keys used for MD5 authentication.
  /// Structure is documented below.
  final pulumi.Input<RouterMd5AuthenticationKeys>? md5AuthenticationKeys;

  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// A URI of an NCC Gateway spoke
  final pulumi.Input<String>? nccGateway;

  /// A reference to the network to which this router belongs.
  final pulumi.Input<String>? network;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<RouterParams>? params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Region where the router resides.
  final pulumi.Input<String>? region;

  RouterArgs({
    this.bgp,
    this.description,
    this.encryptedInterconnectRouter,
    this.md5AuthenticationKeys,
    this.name,
    this.nccGateway,
    this.network,
    this.params,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bgpValue = bgp;
    if (bgpValue != null) {
      map['bgp'] =
          pulumi.Input.mapOptionalInputValue<RouterBgp, Map<String, dynamic>>(
              bgpValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptedInterconnectRouterValue = encryptedInterconnectRouter;
    if (encryptedInterconnectRouterValue != null) {
      map['encryptedInterconnectRouter'] = encryptedInterconnectRouterValue;
    }
    final md5AuthenticationKeysValue = md5AuthenticationKeys;
    if (md5AuthenticationKeysValue != null) {
      map['md5AuthenticationKeys'] = pulumi.Input.mapOptionalInputValue<
              RouterMd5AuthenticationKeys, Map<String, dynamic>>(
          md5AuthenticationKeysValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nccGatewayValue = nccGateway;
    if (nccGatewayValue != null) {
      map['nccGateway'] = nccGatewayValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = pulumi.Input.mapOptionalInputValue<RouterParams,
          Map<String, dynamic>>(paramsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RouterArgs.fromMap(Map<String, dynamic> map) {
    return RouterArgs(
      bgp: pulumi.Input.asOptionalInput<RouterBgp>(map['bgp']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      encryptedInterconnectRouter: pulumi.Input.asOptionalInput<bool>(
          map['encryptedInterconnectRouter']),
      md5AuthenticationKeys:
          pulumi.Input.asOptionalInput<RouterMd5AuthenticationKeys>(
              map['md5AuthenticationKeys']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nccGateway: pulumi.Input.asOptionalInput<String>(map['nccGateway']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      params: pulumi.Input.asOptionalInput<RouterParams>(map['params']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
