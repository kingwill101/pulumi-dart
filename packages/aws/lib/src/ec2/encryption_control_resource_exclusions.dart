// ignore_for_file: unused_element, unnecessary_cast

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
  final EncryptionControlResourceExclusionsEgressOnlyInternetGateway
  egressOnlyInternetGateway;

  /// `state` and `state_message` describing encryption enforcement state for Elastic File System (EFS).
  final EncryptionControlResourceExclusionsElasticFileSystem elasticFileSystem;

  /// `state` and `state_message` describing encryption enforcement state for Internet Gateways.
  final EncryptionControlResourceExclusionsInternetGateway internetGateway;

  /// `state` and `state_message` describing encryption enforcement state for Lambda Functions.
  final EncryptionControlResourceExclusionsLambda lambda;

  /// `state` and `state_message` describing encryption enforcement state for NAT Gateways.
  final EncryptionControlResourceExclusionsNatGateway natGateway;

  /// `state` and `state_message` describing encryption enforcement state for Virtual Private Gateways.
  final EncryptionControlResourceExclusionsVirtualPrivateGateway
  virtualPrivateGateway;

  /// `state` and `state_message` describing encryption enforcement state for VPC Lattice.
  final EncryptionControlResourceExclusionsVpcLattice vpcLattice;

  /// `state` and `state_message` describing encryption enforcement state for peered VPCs.
  final EncryptionControlResourceExclusionsVpcPeering vpcPeering;

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

  factory EncryptionControlResourceExclusions.fromMap(
    Map<String, dynamic> map,
  ) {
    return EncryptionControlResourceExclusions(
      egressOnlyInternetGateway:
          EncryptionControlResourceExclusionsEgressOnlyInternetGateway.fromMap(
            (map['egressOnlyInternetGateway'] as Map).cast<String, dynamic>(),
          ),
      elasticFileSystem:
          EncryptionControlResourceExclusionsElasticFileSystem.fromMap(
            (map['elasticFileSystem'] as Map).cast<String, dynamic>(),
          ),
      internetGateway:
          EncryptionControlResourceExclusionsInternetGateway.fromMap(
            (map['internetGateway'] as Map).cast<String, dynamic>(),
          ),
      lambda: EncryptionControlResourceExclusionsLambda.fromMap(
        (map['lambda'] as Map).cast<String, dynamic>(),
      ),
      natGateway: EncryptionControlResourceExclusionsNatGateway.fromMap(
        (map['natGateway'] as Map).cast<String, dynamic>(),
      ),
      virtualPrivateGateway:
          EncryptionControlResourceExclusionsVirtualPrivateGateway.fromMap(
            (map['virtualPrivateGateway'] as Map).cast<String, dynamic>(),
          ),
      vpcLattice: EncryptionControlResourceExclusionsVpcLattice.fromMap(
        (map['vpcLattice'] as Map).cast<String, dynamic>(),
      ),
      vpcPeering: EncryptionControlResourceExclusionsVpcPeering.fromMap(
        (map['vpcPeering'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
