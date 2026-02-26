// ignore_for_file: unused_element, unnecessary_cast

import '../vpc_encryption_control_resource_exclusions_egress_only_internet_gateway/vpc_encryption_control_resource_exclusions_egress_only_internet_gateway.dart';
import '../vpc_encryption_control_resource_exclusions_elastic_file_system/vpc_encryption_control_resource_exclusions_elastic_file_system.dart';
import '../vpc_encryption_control_resource_exclusions_internet_gateway/vpc_encryption_control_resource_exclusions_internet_gateway.dart';
import '../vpc_encryption_control_resource_exclusions_lambda/vpc_encryption_control_resource_exclusions_lambda.dart';
import '../vpc_encryption_control_resource_exclusions_nat_gateway/vpc_encryption_control_resource_exclusions_nat_gateway.dart';
import '../vpc_encryption_control_resource_exclusions_virtual_private_gateway/vpc_encryption_control_resource_exclusions_virtual_private_gateway.dart';
import '../vpc_encryption_control_resource_exclusions_vpc_lattice/vpc_encryption_control_resource_exclusions_vpc_lattice.dart';
import '../vpc_encryption_control_resource_exclusions_vpc_peering/vpc_encryption_control_resource_exclusions_vpc_peering.dart';

class VpcEncryptionControlResourceExclusions {
  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for Egress-Only Internet Gateways.
  final VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway
      egressOnlyInternetGateway;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for Elastic File System (EFS).
  final VpcEncryptionControlResourceExclusionsElasticFileSystem
      elasticFileSystem;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for Internet Gateways.
  final VpcEncryptionControlResourceExclusionsInternetGateway internetGateway;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for Lambda Functions.
  final VpcEncryptionControlResourceExclusionsLambda lambda;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for NAT Gateways.
  final VpcEncryptionControlResourceExclusionsNatGateway natGateway;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for Virtual Private Gateways.
  final VpcEncryptionControlResourceExclusionsVirtualPrivateGateway
      virtualPrivateGateway;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for VPC Lattice.
  final VpcEncryptionControlResourceExclusionsVpcLattice vpcLattice;

  /// <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> and <span pulumi-lang-nodejs="`stateMessage`" pulumi-lang-dotnet="`StateMessage`" pulumi-lang-go="`stateMessage`" pulumi-lang-python="`state_message`" pulumi-lang-yaml="`stateMessage`" pulumi-lang-java="`stateMessage`">`state_message`</span> describing encryption enforcement state for peered VPCs.
  final VpcEncryptionControlResourceExclusionsVpcPeering vpcPeering;

  VpcEncryptionControlResourceExclusions({
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

  factory VpcEncryptionControlResourceExclusions.fromMap(
      Map<String, dynamic> map) {
    return VpcEncryptionControlResourceExclusions(
      egressOnlyInternetGateway:
          VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway
              .fromMap((map['egressOnlyInternetGateway'] as Map)
                  .cast<String, dynamic>()),
      elasticFileSystem:
          VpcEncryptionControlResourceExclusionsElasticFileSystem.fromMap(
              (map['elasticFileSystem'] as Map).cast<String, dynamic>()),
      internetGateway:
          VpcEncryptionControlResourceExclusionsInternetGateway.fromMap(
              (map['internetGateway'] as Map).cast<String, dynamic>()),
      lambda: VpcEncryptionControlResourceExclusionsLambda.fromMap(
          (map['lambda'] as Map).cast<String, dynamic>()),
      natGateway: VpcEncryptionControlResourceExclusionsNatGateway.fromMap(
          (map['natGateway'] as Map).cast<String, dynamic>()),
      virtualPrivateGateway:
          VpcEncryptionControlResourceExclusionsVirtualPrivateGateway.fromMap(
              (map['virtualPrivateGateway'] as Map).cast<String, dynamic>()),
      vpcLattice: VpcEncryptionControlResourceExclusionsVpcLattice.fromMap(
          (map['vpcLattice'] as Map).cast<String, dynamic>()),
      vpcPeering: VpcEncryptionControlResourceExclusionsVpcPeering.fromMap(
          (map['vpcPeering'] as Map).cast<String, dynamic>()),
    );
  }
}
