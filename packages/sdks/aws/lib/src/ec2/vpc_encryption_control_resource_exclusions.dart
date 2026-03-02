// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway> egressOnlyInternetGateway;
  /// `state` and `state_message` describing encryption enforcement state for Elastic File System (EFS).
  final pulumi.Input<VpcEncryptionControlResourceExclusionsElasticFileSystem> elasticFileSystem;
  /// `state` and `state_message` describing encryption enforcement state for Internet Gateways.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsInternetGateway> internetGateway;
  /// `state` and `state_message` describing encryption enforcement state for Lambda Functions.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsLambda> lambda;
  /// `state` and `state_message` describing encryption enforcement state for NAT Gateways.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsNatGateway> natGateway;
  /// `state` and `state_message` describing encryption enforcement state for Virtual Private Gateways.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsVirtualPrivateGateway> virtualPrivateGateway;
  /// `state` and `state_message` describing encryption enforcement state for VPC Lattice.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsVpcLattice> vpcLattice;
  /// `state` and `state_message` describing encryption enforcement state for peered VPCs.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsVpcPeering> vpcPeering;

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
      'egressOnlyInternetGateway': pulumi.Input.mapInputValue<VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway, Map<String, dynamic>>(egressOnlyInternetGateway, (value) => value.toMap()),
      'elasticFileSystem': pulumi.Input.mapInputValue<VpcEncryptionControlResourceExclusionsElasticFileSystem, Map<String, dynamic>>(elasticFileSystem, (value) => value.toMap()),
      'internetGateway': pulumi.Input.mapInputValue<VpcEncryptionControlResourceExclusionsInternetGateway, Map<String, dynamic>>(internetGateway, (value) => value.toMap()),
      'lambda': pulumi.Input.mapInputValue<VpcEncryptionControlResourceExclusionsLambda, Map<String, dynamic>>(lambda, (value) => value.toMap()),
      'natGateway': pulumi.Input.mapInputValue<VpcEncryptionControlResourceExclusionsNatGateway, Map<String, dynamic>>(natGateway, (value) => value.toMap()),
      'virtualPrivateGateway': pulumi.Input.mapInputValue<VpcEncryptionControlResourceExclusionsVirtualPrivateGateway, Map<String, dynamic>>(virtualPrivateGateway, (value) => value.toMap()),
      'vpcLattice': pulumi.Input.mapInputValue<VpcEncryptionControlResourceExclusionsVpcLattice, Map<String, dynamic>>(vpcLattice, (value) => value.toMap()),
      'vpcPeering': pulumi.Input.mapInputValue<VpcEncryptionControlResourceExclusionsVpcPeering, Map<String, dynamic>>(vpcPeering, (value) => value.toMap()),
    };
  }

  factory VpcEncryptionControlResourceExclusions.fromMap(Map<String, dynamic> map) {
    return VpcEncryptionControlResourceExclusions(
      egressOnlyInternetGateway: (VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway.fromMap((map['egressOnlyInternetGateway']! as Map).cast<String, dynamic>())).input(),
      elasticFileSystem: (VpcEncryptionControlResourceExclusionsElasticFileSystem.fromMap((map['elasticFileSystem']! as Map).cast<String, dynamic>())).input(),
      internetGateway: (VpcEncryptionControlResourceExclusionsInternetGateway.fromMap((map['internetGateway']! as Map).cast<String, dynamic>())).input(),
      lambda: (VpcEncryptionControlResourceExclusionsLambda.fromMap((map['lambda']! as Map).cast<String, dynamic>())).input(),
      natGateway: (VpcEncryptionControlResourceExclusionsNatGateway.fromMap((map['natGateway']! as Map).cast<String, dynamic>())).input(),
      virtualPrivateGateway: (VpcEncryptionControlResourceExclusionsVirtualPrivateGateway.fromMap((map['virtualPrivateGateway']! as Map).cast<String, dynamic>())).input(),
      vpcLattice: (VpcEncryptionControlResourceExclusionsVpcLattice.fromMap((map['vpcLattice']! as Map).cast<String, dynamic>())).input(),
      vpcPeering: (VpcEncryptionControlResourceExclusionsVpcPeering.fromMap((map['vpcPeering']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

