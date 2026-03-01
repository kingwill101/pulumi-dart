// ignore_for_file: unused_element, unnecessary_cast

import 'vpc_encryption_control_resource_exclusions_egress_only_internet_gateway.dart';
import 'vpc_encryption_control_resource_exclusions_elastic_file_system.dart';
import 'vpc_encryption_control_resource_exclusions_internet_gateway.dart';
import 'vpc_encryption_control_resource_exclusions_lambda.dart';
import 'vpc_encryption_control_resource_exclusions_nat_gateway.dart';
import 'vpc_encryption_control_resource_exclusions_virtual_private_gateway.dart';
import 'vpc_encryption_control_resource_exclusions_vpc_lattice.dart';
import 'vpc_encryption_control_resource_exclusions_vpc_peering.dart';

class VpcEncryptionControlResourceExclusions {
  /// `state` and `state_message` describing encryption enforcement state for Egress-Only Internet Gateways.
  final VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway egressOnlyInternetGateway;
  /// `state` and `state_message` describing encryption enforcement state for Elastic File System (EFS).
  final VpcEncryptionControlResourceExclusionsElasticFileSystem elasticFileSystem;
  /// `state` and `state_message` describing encryption enforcement state for Internet Gateways.
  final VpcEncryptionControlResourceExclusionsInternetGateway internetGateway;
  /// `state` and `state_message` describing encryption enforcement state for Lambda Functions.
  final VpcEncryptionControlResourceExclusionsLambda lambda;
  /// `state` and `state_message` describing encryption enforcement state for NAT Gateways.
  final VpcEncryptionControlResourceExclusionsNatGateway natGateway;
  /// `state` and `state_message` describing encryption enforcement state for Virtual Private Gateways.
  final VpcEncryptionControlResourceExclusionsVirtualPrivateGateway virtualPrivateGateway;
  /// `state` and `state_message` describing encryption enforcement state for VPC Lattice.
  final VpcEncryptionControlResourceExclusionsVpcLattice vpcLattice;
  /// `state` and `state_message` describing encryption enforcement state for peered VPCs.
  final VpcEncryptionControlResourceExclusionsVpcPeering vpcPeering;

  /// Creates a new [VpcEncryptionControlResourceExclusions].
  /// [egressOnlyInternetGateway] `state` and `state_message` describing encryption enforcement state for Egress-Only Internet Gateways.
  /// [elasticFileSystem] `state` and `state_message` describing encryption enforcement state for Elastic File System (EFS).
  /// [internetGateway] `state` and `state_message` describing encryption enforcement state for Internet Gateways.
  /// [lambda] `state` and `state_message` describing encryption enforcement state for Lambda Functions.
  /// [natGateway] `state` and `state_message` describing encryption enforcement state for NAT Gateways.
  /// [virtualPrivateGateway] `state` and `state_message` describing encryption enforcement state for Virtual Private Gateways.
  /// [vpcLattice] `state` and `state_message` describing encryption enforcement state for VPC Lattice.
  /// [vpcPeering] `state` and `state_message` describing encryption enforcement state for peered VPCs.
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
    return <String, dynamic>{
      'egressOnlyInternetGateway': egressOnlyInternetGateway.toMap(),
      'elasticFileSystem': elasticFileSystem.toMap(),
      'internetGateway': internetGateway.toMap(),
      'lambda': lambda.toMap(),
      'natGateway': natGateway.toMap(),
      'virtualPrivateGateway': virtualPrivateGateway.toMap(),
      'vpcLattice': vpcLattice.toMap(),
      'vpcPeering': vpcPeering.toMap(),
    };
  }

  factory VpcEncryptionControlResourceExclusions.fromMap(Map<String, dynamic> map) {
    return VpcEncryptionControlResourceExclusions(
      egressOnlyInternetGateway: VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway.fromMap((map['egressOnlyInternetGateway'] as Map).cast<String, dynamic>()),
      elasticFileSystem: VpcEncryptionControlResourceExclusionsElasticFileSystem.fromMap((map['elasticFileSystem'] as Map).cast<String, dynamic>()),
      internetGateway: VpcEncryptionControlResourceExclusionsInternetGateway.fromMap((map['internetGateway'] as Map).cast<String, dynamic>()),
      lambda: VpcEncryptionControlResourceExclusionsLambda.fromMap((map['lambda'] as Map).cast<String, dynamic>()),
      natGateway: VpcEncryptionControlResourceExclusionsNatGateway.fromMap((map['natGateway'] as Map).cast<String, dynamic>()),
      virtualPrivateGateway: VpcEncryptionControlResourceExclusionsVirtualPrivateGateway.fromMap((map['virtualPrivateGateway'] as Map).cast<String, dynamic>()),
      vpcLattice: VpcEncryptionControlResourceExclusionsVpcLattice.fromMap((map['vpcLattice'] as Map).cast<String, dynamic>()),
      vpcPeering: VpcEncryptionControlResourceExclusionsVpcPeering.fromMap((map['vpcPeering'] as Map).cast<String, dynamic>()),
    );
  }
}

