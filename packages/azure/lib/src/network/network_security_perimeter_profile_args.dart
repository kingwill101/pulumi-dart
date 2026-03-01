// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_security_perimeter_profile_network_security_perimeter_profile_args_doc}
/// The set of arguments for NetworkSecurityPerimeterProfile.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_profile_network_security_perimeter_profile_args_doc}
class NetworkSecurityPerimeterProfileArgs {
  /// The name which should be used for this Network Security Perimeter Profile. Changing this forces a new Network Security Perimeter Profile to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Network Security Perimeter within this Profile is created. Changing this forces a new Network Security Perimeter Profile to be created.
  final pulumi.Input<String> networkSecurityPerimeterId;

  /// Creates a new [NetworkSecurityPerimeterProfileArgs].
  /// [name] The name which should be used for this Network Security Perimeter Profile. Changing this forces a new Network Security Perimeter Profile to be created.
  /// [networkSecurityPerimeterId] The ID of the Network Security Perimeter within this Profile is created. Changing this forces a new Network Security Perimeter Profile to be created.
  NetworkSecurityPerimeterProfileArgs({
    String? name,
    required String networkSecurityPerimeterId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSecurityPerimeterId = pulumi.Input.asInput<String>(networkSecurityPerimeterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'networkSecurityPerimeterId': networkSecurityPerimeterId,
    };
  }

  factory NetworkSecurityPerimeterProfileArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterProfileArgs(
      name: map['name'] == null ? null : map['name'] as String,
      networkSecurityPerimeterId: map['networkSecurityPerimeterId'] as String,
    );
  }
}

