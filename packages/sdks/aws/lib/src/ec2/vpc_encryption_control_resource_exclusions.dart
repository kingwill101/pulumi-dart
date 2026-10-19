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
  /// Encryption enforcement state for Egress-Only Internet Gateways. See `resource_exclusions.egress_only_internet_gateway` below.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway> egressOnlyInternetGateway;
  /// Encryption enforcement state for Elastic File System (EFS). See `resource_exclusions.elastic_file_system` below.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsElasticFileSystem> elasticFileSystem;
  /// Encryption enforcement state for Internet Gateways. See `resource_exclusions.internet_gateway` below.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsInternetGateway> internetGateway;
  /// Encryption enforcement state for Lambda Functions. See `resource_exclusions.lambda` below.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsLambda> lambda;
  /// Encryption enforcement state for NAT Gateways. See `resource_exclusions.nat_gateway` below.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsNatGateway> natGateway;
  /// Encryption enforcement state for Virtual Private Gateways. See `resource_exclusions.virtual_private_gateway` below.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsVirtualPrivateGateway> virtualPrivateGateway;
  /// Encryption enforcement state for VPC Lattice. See `resource_exclusions.vpc_lattice` below.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsVpcLattice> vpcLattice;
  /// Encryption enforcement state for peered VPCs. See `resource_exclusions.vpc_peering` below.
  final pulumi.Input<VpcEncryptionControlResourceExclusionsVpcPeering> vpcPeering;

  /// Creates a new [VpcEncryptionControlResourceExclusions].
  /// [egressOnlyInternetGateway] Encryption enforcement state for Egress-Only Internet Gateways. See `resource_exclusions.egress_only_internet_gateway` below.
  /// [elasticFileSystem] Encryption enforcement state for Elastic File System (EFS). See `resource_exclusions.elastic_file_system` below.
  /// [internetGateway] Encryption enforcement state for Internet Gateways. See `resource_exclusions.internet_gateway` below.
  /// [lambda] Encryption enforcement state for Lambda Functions. See `resource_exclusions.lambda` below.
  /// [natGateway] Encryption enforcement state for NAT Gateways. See `resource_exclusions.nat_gateway` below.
  /// [virtualPrivateGateway] Encryption enforcement state for Virtual Private Gateways. See `resource_exclusions.virtual_private_gateway` below.
  /// [vpcLattice] Encryption enforcement state for VPC Lattice. See `resource_exclusions.vpc_lattice` below.
  /// [vpcPeering] Encryption enforcement state for peered VPCs. See `resource_exclusions.vpc_peering` below.
  const VpcEncryptionControlResourceExclusions({
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
      egressOnlyInternetGateway: pulumi.Input.fromValue(VpcEncryptionControlResourceExclusionsEgressOnlyInternetGateway.fromMap((map['egressOnlyInternetGateway']! as Map).cast<String, dynamic>())),
      elasticFileSystem: pulumi.Input.fromValue(VpcEncryptionControlResourceExclusionsElasticFileSystem.fromMap((map['elasticFileSystem']! as Map).cast<String, dynamic>())),
      internetGateway: pulumi.Input.fromValue(VpcEncryptionControlResourceExclusionsInternetGateway.fromMap((map['internetGateway']! as Map).cast<String, dynamic>())),
      lambda: pulumi.Input.fromValue(VpcEncryptionControlResourceExclusionsLambda.fromMap((map['lambda']! as Map).cast<String, dynamic>())),
      natGateway: pulumi.Input.fromValue(VpcEncryptionControlResourceExclusionsNatGateway.fromMap((map['natGateway']! as Map).cast<String, dynamic>())),
      virtualPrivateGateway: pulumi.Input.fromValue(VpcEncryptionControlResourceExclusionsVirtualPrivateGateway.fromMap((map['virtualPrivateGateway']! as Map).cast<String, dynamic>())),
      vpcLattice: pulumi.Input.fromValue(VpcEncryptionControlResourceExclusionsVpcLattice.fromMap((map['vpcLattice']! as Map).cast<String, dynamic>())),
      vpcPeering: pulumi.Input.fromValue(VpcEncryptionControlResourceExclusionsVpcPeering.fromMap((map['vpcPeering']! as Map).cast<String, dynamic>())),
    );
  }
}
