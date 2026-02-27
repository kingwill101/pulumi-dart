// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
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
  final Input<AttestationOccurrence>? attestation;

  /// Describes a verifiable build.
  final Input<BuildOccurrence>? build;

  /// Describes a compliance violation on a linked resource.
  final Input<ComplianceOccurrence>? compliance;

  /// Describes the deployment of an artifact on a runtime.
  final Input<DeploymentOccurrence>? deployment;

  /// Describes when a resource was discovered.
  final Input<DiscoveryOccurrence>? discovery;

  /// Describes an attestation of an artifact using dsse.
  final Input<DSSEAttestationOccurrence>? dsseAttestation;

  /// https://github.com/secure-systems-lab/dsse
  final Input<Envelope>? envelope;

  /// Describes how this resource derives from the basis in the associated note.
  final Input<ImageOccurrence>? image;

  /// Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  final Input<String> noteName;

  /// Describes the installation of a package on the linked resource.
  final Input<PackageOccurrence>? package;
  final Input<String>? project;

  /// A description of actions that can be taken to remedy the note.
  final Input<String>? remediation;

  /// Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.
  final Input<String> resourceUri;

  /// Describes a specific SBOM reference occurrences.
  final Input<SBOMReferenceOccurrence>? sbomReference;

  /// Describes an available package upgrade on the linked resource.
  final Input<UpgradeOccurrence>? upgrade;

  /// Describes a security vulnerability.
  final Input<VulnerabilityOccurrence>? vulnerability;

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
      map['attestation'] = Input.mapOptionalInputValue<AttestationOccurrence,
          Map<String, dynamic>>(attestationValue, (value) => value.toMap());
    }
    final buildValue = build;
    if (buildValue != null) {
      map['build'] =
          Input.mapOptionalInputValue<BuildOccurrence, Map<String, dynamic>>(
              buildValue, (value) => value.toMap());
    }
    final complianceValue = compliance;
    if (complianceValue != null) {
      map['compliance'] = Input.mapOptionalInputValue<ComplianceOccurrence,
          Map<String, dynamic>>(complianceValue, (value) => value.toMap());
    }
    final deploymentValue = deployment;
    if (deploymentValue != null) {
      map['deployment'] = Input.mapOptionalInputValue<DeploymentOccurrence,
          Map<String, dynamic>>(deploymentValue, (value) => value.toMap());
    }
    final discoveryValue = discovery;
    if (discoveryValue != null) {
      map['discovery'] = Input.mapOptionalInputValue<DiscoveryOccurrence,
          Map<String, dynamic>>(discoveryValue, (value) => value.toMap());
    }
    final dsseAttestationValue = dsseAttestation;
    if (dsseAttestationValue != null) {
      map['dsseAttestation'] = Input.mapOptionalInputValue<
          DSSEAttestationOccurrence,
          Map<String, dynamic>>(dsseAttestationValue, (value) => value.toMap());
    }
    final envelopeValue = envelope;
    if (envelopeValue != null) {
      map['envelope'] =
          Input.mapOptionalInputValue<Envelope, Map<String, dynamic>>(
              envelopeValue, (value) => value.toMap());
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] =
          Input.mapOptionalInputValue<ImageOccurrence, Map<String, dynamic>>(
              imageValue, (value) => value.toMap());
    }
    map['noteName'] = noteName;
    final packageValue = package;
    if (packageValue != null) {
      map['package'] =
          Input.mapOptionalInputValue<PackageOccurrence, Map<String, dynamic>>(
              packageValue, (value) => value.toMap());
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
      map['sbomReference'] = Input.mapOptionalInputValue<
          SBOMReferenceOccurrence,
          Map<String, dynamic>>(sbomReferenceValue, (value) => value.toMap());
    }
    final upgradeValue = upgrade;
    if (upgradeValue != null) {
      map['upgrade'] =
          Input.mapOptionalInputValue<UpgradeOccurrence, Map<String, dynamic>>(
              upgradeValue, (value) => value.toMap());
    }
    final vulnerabilityValue = vulnerability;
    if (vulnerabilityValue != null) {
      map['vulnerability'] = Input.mapOptionalInputValue<
          VulnerabilityOccurrence,
          Map<String, dynamic>>(vulnerabilityValue, (value) => value.toMap());
    }
    return map;
  }

  factory OccurrenceArgs.fromMap(Map<String, dynamic> map) {
    return OccurrenceArgs(
      attestation:
          Input.asOptionalInput<AttestationOccurrence>(map['attestation']),
      build: Input.asOptionalInput<BuildOccurrence>(map['build']),
      compliance:
          Input.asOptionalInput<ComplianceOccurrence>(map['compliance']),
      deployment:
          Input.asOptionalInput<DeploymentOccurrence>(map['deployment']),
      discovery: Input.asOptionalInput<DiscoveryOccurrence>(map['discovery']),
      dsseAttestation: Input.asOptionalInput<DSSEAttestationOccurrence>(
          map['dsseAttestation']),
      envelope: Input.asOptionalInput<Envelope>(map['envelope']),
      image: Input.asOptionalInput<ImageOccurrence>(map['image']),
      noteName: Input.asInput<String>(map['noteName']),
      package: Input.asOptionalInput<PackageOccurrence>(map['package']),
      project: Input.asOptionalInput<String>(map['project']),
      remediation: Input.asOptionalInput<String>(map['remediation']),
      resourceUri: Input.asInput<String>(map['resourceUri']),
      sbomReference:
          Input.asOptionalInput<SBOMReferenceOccurrence>(map['sbomReference']),
      upgrade: Input.asOptionalInput<UpgradeOccurrence>(map['upgrade']),
      vulnerability:
          Input.asOptionalInput<VulnerabilityOccurrence>(map['vulnerability']),
    );
  }
}
