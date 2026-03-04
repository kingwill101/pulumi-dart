// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_control_resource_exclusions_egress_only_internet_gateway.dart';
import 'encryption_control_resource_exclusions_elastic_file_system.dart';
import 'encryption_control_resource_exclusions_internet_gateway.dart';
import 'encryption_control_resource_exclusions_lambda.dart';
import 'encryption_control_resource_exclusions_nat_gateway.dart';
import 'encryption_control_resource_exclusions_virtual_private_gateway.dart';
import 'encryption_control_resource_exclusions_vpc_lattice.dart';
import 'encryption_control_resource_exclusions_vpc_peering.dart';

class EncryptionControlResourceExclusions {
  /// `state` and `state_message` describing encryption enforcement state for Egress-Only Internet Gateways.
  final pulumi.Input<
    EncryptionControlResourceExclusionsEgressOnlyInternetGateway
  >
  egressOnlyInternetGateway;

  /// `state` and `state_message` describing encryption enforcement state for Elastic File System (EFS).
  final pulumi.Input<EncryptionControlResourceExclusionsElasticFileSystem>
  elasticFileSystem;

  /// `state` and `state_message` describing encryption enforcement state for Internet Gateways.
  final pulumi.Input<EncryptionControlResourceExclusionsInternetGateway>
  internetGateway;

  /// `state` and `state_message` describing encryption enforcement state for Lambda Functions.
  final pulumi.Input<EncryptionControlResourceExclusionsLambda> lambda;

  /// `state` and `state_message` describing encryption enforcement state for NAT Gateways.
  final pulumi.Input<EncryptionControlResourceExclusionsNatGateway> natGateway;

  /// `state` and `state_message` describing encryption enforcement state for Virtual Private Gateways.
  final pulumi.Input<EncryptionControlResourceExclusionsVirtualPrivateGateway>
  virtualPrivateGateway;

  /// `state` and `state_message` describing encryption enforcement state for VPC Lattice.
  final pulumi.Input<EncryptionControlResourceExclusionsVpcLattice> vpcLattice;

  /// `state` and `state_message` describing encryption enforcement state for peered VPCs.
  final pulumi.Input<EncryptionControlResourceExclusionsVpcPeering> vpcPeering;

  /// Creates a new [EncryptionControlResourceExclusions].
  /// [egressOnlyInternetGateway] `state` and `state_message` describing encryption enforcement state for Egress-Only Internet Gateways.
  /// [elasticFileSystem] `state` and `state_message` describing encryption enforcement state for Elastic File System (EFS).
  /// [internetGateway] `state` and `state_message` describing encryption enforcement state for Internet Gateways.
  /// [lambda] `state` and `state_message` describing encryption enforcement state for Lambda Functions.
  /// [natGateway] `state` and `state_message` describing encryption enforcement state for NAT Gateways.
  /// [virtualPrivateGateway] `state` and `state_message` describing encryption enforcement state for Virtual Private Gateways.
  /// [vpcLattice] `state` and `state_message` describing encryption enforcement state for VPC Lattice.
  /// [vpcPeering] `state` and `state_message` describing encryption enforcement state for peered VPCs.
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
    return <String, dynamic>{
      'egressOnlyInternetGateway':
          pulumi.Input.mapInputValue<
            EncryptionControlResourceExclusionsEgressOnlyInternetGateway,
            Map<String, dynamic>
          >(egressOnlyInternetGateway, (value) => value.toMap()),
      'elasticFileSystem':
          pulumi.Input.mapInputValue<
            EncryptionControlResourceExclusionsElasticFileSystem,
            Map<String, dynamic>
          >(elasticFileSystem, (value) => value.toMap()),
      'internetGateway':
          pulumi.Input.mapInputValue<
            EncryptionControlResourceExclusionsInternetGateway,
            Map<String, dynamic>
          >(internetGateway, (value) => value.toMap()),
      'lambda':
          pulumi.Input.mapInputValue<
            EncryptionControlResourceExclusionsLambda,
            Map<String, dynamic>
          >(lambda, (value) => value.toMap()),
      'natGateway':
          pulumi.Input.mapInputValue<
            EncryptionControlResourceExclusionsNatGateway,
            Map<String, dynamic>
          >(natGateway, (value) => value.toMap()),
      'virtualPrivateGateway':
          pulumi.Input.mapInputValue<
            EncryptionControlResourceExclusionsVirtualPrivateGateway,
            Map<String, dynamic>
          >(virtualPrivateGateway, (value) => value.toMap()),
      'vpcLattice':
          pulumi.Input.mapInputValue<
            EncryptionControlResourceExclusionsVpcLattice,
            Map<String, dynamic>
          >(vpcLattice, (value) => value.toMap()),
      'vpcPeering':
          pulumi.Input.mapInputValue<
            EncryptionControlResourceExclusionsVpcPeering,
            Map<String, dynamic>
          >(vpcPeering, (value) => value.toMap()),
    };
  }

  factory EncryptionControlResourceExclusions.fromMap(
    Map<String, dynamic> map,
  ) {
    return EncryptionControlResourceExclusions(
      egressOnlyInternetGateway: pulumi.Input.fromValue(
        EncryptionControlResourceExclusionsEgressOnlyInternetGateway.fromMap(
          (map['egressOnlyInternetGateway']! as Map).cast<String, dynamic>(),
        ),
      ),
      elasticFileSystem: pulumi.Input.fromValue(
        EncryptionControlResourceExclusionsElasticFileSystem.fromMap(
          (map['elasticFileSystem']! as Map).cast<String, dynamic>(),
        ),
      ),
      internetGateway: pulumi.Input.fromValue(
        EncryptionControlResourceExclusionsInternetGateway.fromMap(
          (map['internetGateway']! as Map).cast<String, dynamic>(),
        ),
      ),
      lambda: pulumi.Input.fromValue(
        EncryptionControlResourceExclusionsLambda.fromMap(
          (map['lambda']! as Map).cast<String, dynamic>(),
        ),
      ),
      natGateway: pulumi.Input.fromValue(
        EncryptionControlResourceExclusionsNatGateway.fromMap(
          (map['natGateway']! as Map).cast<String, dynamic>(),
        ),
      ),
      virtualPrivateGateway: pulumi.Input.fromValue(
        EncryptionControlResourceExclusionsVirtualPrivateGateway.fromMap(
          (map['virtualPrivateGateway']! as Map).cast<String, dynamic>(),
        ),
      ),
      vpcLattice: pulumi.Input.fromValue(
        EncryptionControlResourceExclusionsVpcLattice.fromMap(
          (map['vpcLattice']! as Map).cast<String, dynamic>(),
        ),
      ),
      vpcPeering: pulumi.Input.fromValue(
        EncryptionControlResourceExclusionsVpcPeering.fromMap(
          (map['vpcPeering']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
