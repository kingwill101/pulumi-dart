// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestation_occurrence.dart';
import 'build_occurrence.dart';
import 'compliance_occurrence.dart';
import 'deployment_occurrence.dart';
import 'discovery_occurrence.dart';
import 'dsseattestation_occurrence.dart';
import 'envelope.dart';
import 'image_occurrence.dart';
import 'package_occurrence.dart';
import 'sbomreference_occurrence.dart';
import 'upgrade_occurrence.dart';
import 'vulnerability_occurrence.dart';

/// The set of arguments for Occurrence.
class OccurrenceArgs {
  /// Describes an attestation of an artifact.
  final pulumi.Input<AttestationOccurrence>? attestation;

  /// Describes a verifiable build.
  final pulumi.Input<BuildOccurrence>? build;

  /// Describes a compliance violation on a linked resource.
  final pulumi.Input<ComplianceOccurrence>? compliance;

  /// Describes the deployment of an artifact on a runtime.
  final pulumi.Input<DeploymentOccurrence>? deployment;

  /// Describes when a resource was discovered.
  final pulumi.Input<DiscoveryOccurrence>? discovery;

  /// Describes an attestation of an artifact using dsse.
  final pulumi.Input<DSSEAttestationOccurrence>? dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  final pulumi.Input<Envelope>? envelope;

  /// Describes how this resource derives from the basis in the associated note.
  final pulumi.Input<ImageOccurrence>? image;

  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  final pulumi.Input<String> noteName;

  /// Describes the installation of a package on the linked resource.
  final pulumi.Input<PackageOccurrence>? package;
  final pulumi.Input<String>? project;

  /// A description of actions that can be taken to remedy the note.
  final pulumi.Input<String>? remediation;

  /// Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.
  final pulumi.Input<String> resourceUri;

  /// Describes a specific SBOM reference occurrences.
  final pulumi.Input<SBOMReferenceOccurrence>? sbomReference;

  /// Describes an available package upgrade on the linked resource.
  final pulumi.Input<UpgradeOccurrence>? upgrade;

  /// Describes a security vulnerability.
  final pulumi.Input<VulnerabilityOccurrence>? vulnerability;

  OccurrenceArgs({
    this.attestation,
    this.build,
    this.compliance,
    this.deployment,
    this.discovery,
    this.dsseAttestation,
    this.envelope,
    this.image,
    required this.noteName,
    this.package,
    this.project,
    this.remediation,
    required this.resourceUri,
    this.sbomReference,
    this.upgrade,
    this.vulnerability,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attestationValue = attestation;
    if (attestationValue != null) {
      map['attestation'] = pulumi.Input.mapOptionalInputValue<
          AttestationOccurrence,
          Map<String, dynamic>>(attestationValue, (value) => value.toMap());
    }
    final buildValue = build;
    if (buildValue != null) {
      map['build'] = pulumi.Input.mapOptionalInputValue<BuildOccurrence,
          Map<String, dynamic>>(buildValue, (value) => value.toMap());
    }
    final complianceValue = compliance;
    if (complianceValue != null) {
      map['compliance'] = pulumi.Input.mapOptionalInputValue<
          ComplianceOccurrence,
          Map<String, dynamic>>(complianceValue, (value) => value.toMap());
    }
    final deploymentValue = deployment;
    if (deploymentValue != null) {
      map['deployment'] = pulumi.Input.mapOptionalInputValue<
          DeploymentOccurrence,
          Map<String, dynamic>>(deploymentValue, (value) => value.toMap());
    }
    final discoveryValue = discovery;
    if (discoveryValue != null) {
      map['discovery'] = pulumi.Input.mapOptionalInputValue<DiscoveryOccurrence,
          Map<String, dynamic>>(discoveryValue, (value) => value.toMap());
    }
    final dsseAttestationValue = dsseAttestation;
    if (dsseAttestationValue != null) {
      map['dsseAttestation'] = pulumi.Input.mapOptionalInputValue<
          DSSEAttestationOccurrence,
          Map<String, dynamic>>(dsseAttestationValue, (value) => value.toMap());
    }
    final envelopeValue = envelope;
    if (envelopeValue != null) {
      map['envelope'] =
          pulumi.Input.mapOptionalInputValue<Envelope, Map<String, dynamic>>(
              envelopeValue, (value) => value.toMap());
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = pulumi.Input.mapOptionalInputValue<ImageOccurrence,
          Map<String, dynamic>>(imageValue, (value) => value.toMap());
    }
    map['noteName'] = noteName;
    final packageValue = package;
    if (packageValue != null) {
      map['package'] = pulumi.Input.mapOptionalInputValue<PackageOccurrence,
          Map<String, dynamic>>(packageValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final remediationValue = remediation;
    if (remediationValue != null) {
      map['remediation'] = remediationValue;
    }
    map['resourceUri'] = resourceUri;
    final sbomReferenceValue = sbomReference;
    if (sbomReferenceValue != null) {
      map['sbomReference'] = pulumi.Input.mapOptionalInputValue<
          SBOMReferenceOccurrence,
          Map<String, dynamic>>(sbomReferenceValue, (value) => value.toMap());
    }
    final upgradeValue = upgrade;
    if (upgradeValue != null) {
      map['upgrade'] = pulumi.Input.mapOptionalInputValue<UpgradeOccurrence,
          Map<String, dynamic>>(upgradeValue, (value) => value.toMap());
    }
    final vulnerabilityValue = vulnerability;
    if (vulnerabilityValue != null) {
      map['vulnerability'] = pulumi.Input.mapOptionalInputValue<
          VulnerabilityOccurrence,
          Map<String, dynamic>>(vulnerabilityValue, (value) => value.toMap());
    }
    return map;
  }

  factory OccurrenceArgs.fromMap(Map<String, dynamic> map) {
    return OccurrenceArgs(
      attestation: pulumi.Input.asOptionalInput<AttestationOccurrence>(
          map['attestation']),
      build: pulumi.Input.asOptionalInput<BuildOccurrence>(map['build']),
      compliance:
          pulumi.Input.asOptionalInput<ComplianceOccurrence>(map['compliance']),
      deployment:
          pulumi.Input.asOptionalInput<DeploymentOccurrence>(map['deployment']),
      discovery:
          pulumi.Input.asOptionalInput<DiscoveryOccurrence>(map['discovery']),
      dsseAttestation: pulumi.Input.asOptionalInput<DSSEAttestationOccurrence>(
          map['dsseAttestation']),
      envelope: pulumi.Input.asOptionalInput<Envelope>(map['envelope']),
      image: pulumi.Input.asOptionalInput<ImageOccurrence>(map['image']),
      noteName: pulumi.Input.asInput<String>(map['noteName']),
      package: pulumi.Input.asOptionalInput<PackageOccurrence>(map['package']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      remediation: pulumi.Input.asOptionalInput<String>(map['remediation']),
      resourceUri: pulumi.Input.asInput<String>(map['resourceUri']),
      sbomReference: pulumi.Input.asOptionalInput<SBOMReferenceOccurrence>(
          map['sbomReference']),
      upgrade: pulumi.Input.asOptionalInput<UpgradeOccurrence>(map['upgrade']),
      vulnerability: pulumi.Input.asOptionalInput<VulnerabilityOccurrence>(
          map['vulnerability']),
    );
  }
}
