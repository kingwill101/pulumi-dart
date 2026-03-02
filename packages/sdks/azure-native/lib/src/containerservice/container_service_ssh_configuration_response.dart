// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_service_ssh_public_key_response.dart';

/// SSH configuration for Linux-based VMs running on Azure.
class ContainerServiceSshConfigurationResponse {
  /// The list of SSH public keys used to authenticate with Linux-based VMs. A maximum of 1 key may be specified.
  final pulumi.Input<List<ContainerServiceSshPublicKeyResponse>> publicKeys;

  /// Creates a new [ContainerServiceSshConfigurationResponse].
  /// [publicKeys] The list of SSH public keys used to authenticate with Linux-based VMs. A maximum of 1 key may be specified.
  ContainerServiceSshConfigurationResponse({
    required this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': pulumi.Input.mapInputValue<List<ContainerServiceSshPublicKeyResponse>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<ContainerServiceSshPublicKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerServiceSshConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ContainerServiceSshConfigurationResponse(
      publicKeys: (pulumi.Input.decodeList<ContainerServiceSshPublicKeyResponse>(map['publicKeys'], (value) => ContainerServiceSshPublicKeyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

