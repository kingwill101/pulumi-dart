// ignore_for_file: unused_element, unnecessary_cast

import '../encryption_control_resource_exclusions_egress_only_internet_gateway/encryption_control_resource_exclusions_egress_only_internet_gateway.dart';
import '../encryption_control_resource_exclusions_elastic_file_system/encryption_control_resource_exclusions_elastic_file_system.dart';
import '../encryption_control_resource_exclusions_internet_gateway/encryption_control_resource_exclusions_internet_gateway.dart';
import '../encryption_control_resource_exclusions_lambda/encryption_control_resource_exclusions_lambda.dart';
import '../encryption_control_resource_exclusions_nat_gateway/encryption_control_resource_exclusions_nat_gateway.dart';
import '../encryption_control_resource_exclusions_virtual_private_gateway/encryption_control_resource_exclusions_virtual_private_gateway.dart';
import '../encryption_control_resource_exclusions_vpc_lattice/encryption_control_resource_exclusions_vpc_lattice.dart';
import '../encryption_control_resource_exclusions_vpc_peering/encryption_control_resource_exclusions_vpc_peering.dart';

class EncryptionControlResourceExclusions {
  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for Egress-Only Internet Gateways.
  final EncryptionControlResourceExclusionsEgressOnlyInternetGateway
      egressOnlyInternetGateway;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for Elastic File System (EFS).
  final EncryptionControlResourceExclusionsElasticFileSystem elasticFileSystem;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for Internet Gateways.
  final EncryptionControlResourceExclusionsInternetGateway internetGateway;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for Lambda Functions.
  final EncryptionControlResourceExclusionsLambda lambda;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for NAT Gateways.
  final EncryptionControlResourceExclusionsNatGateway natGateway;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for Virtual Private Gateways.
  final EncryptionControlResourceExclusionsVirtualPrivateGateway
      virtualPrivateGateway;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for VPC Lattice.
  final EncryptionControlResourceExclusionsVpcLattice vpcLattice;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for peered VPCs.
  final EncryptionControlResourceExclusionsVpcPeering vpcPeering;

  EncryptionControlResourceExclusions({
    required this.egressOnlyInternetGateway,
    required this.elasticFileSystem,
    required this.internetGateway,
    required this.lambda,
    required this.natGateway,
    required this.virtualPrivateGateway,
    required this.vpcLattice,
    required this.vpcPeering,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['egressOnlyInternetGateway'] = egressOnlyInternetGateway.toMap();
    map['elasticFileSystem'] = elasticFileSystem.toMap();
    map['internetGateway'] = internetGateway.toMap();
    map['lambda'] = lambda.toMap();
    map['natGateway'] = natGateway.toMap();
    map['virtualPrivateGateway'] = virtualPrivateGateway.toMap();
    map['vpcLattice'] = vpcLattice.toMap();
    map['vpcPeering'] = vpcPeering.toMap();
    return map;
  }

  factory EncryptionControlResourceExclusions.fromMap(
      Map<String, dynamic> map) {
    return EncryptionControlResourceExclusions(
      egressOnlyInternetGateway:
          EncryptionControlResourceExclusionsEgressOnlyInternetGateway.fromMap(
              (map['egressOnlyInternetGateway'] as Map)
                  .cast<String, dynamic>()),
      elasticFileSystem:
          EncryptionControlResourceExclusionsElasticFileSystem.fromMap(
              (map['elasticFileSystem'] as Map).cast<String, dynamic>()),
      internetGateway:
          EncryptionControlResourceExclusionsInternetGateway.fromMap(
              (map['internetGateway'] as Map).cast<String, dynamic>()),
      lambda: EncryptionControlResourceExclusionsLambda.fromMap(
          (map['lambda'] as Map).cast<String, dynamic>()),
      natGateway: EncryptionControlResourceExclusionsNatGateway.fromMap(
          (map['natGateway'] as Map).cast<String, dynamic>()),
      virtualPrivateGateway:
          EncryptionControlResourceExclusionsVirtualPrivateGateway.fromMap(
              (map['virtualPrivateGateway'] as Map).cast<String, dynamic>()),
      vpcLattice: EncryptionControlResourceExclusionsVpcLattice.fromMap(
          (map['vpcLattice'] as Map).cast<String, dynamic>()),
      vpcPeering: EncryptionControlResourceExclusionsVpcPeering.fromMap(
          (map['vpcPeering'] as Map).cast<String, dynamic>()),
    );
  }
}
