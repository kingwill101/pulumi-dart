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

/// {@template pulumi_containeranalysis_v1_occurrence_args_doc}
/// The set of arguments for Occurrence.
/// {@endtemplate}
/// {@macro pulumi_containeranalysis_v1_occurrence_args_doc}
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

  /// Creates a new [OccurrenceArgs].
  /// [attestation] Describes an attestation of an artifact.
  /// [build] Describes a verifiable build.
  /// [compliance] Describes a compliance violation on a linked resource.
  /// [deployment] Describes the deployment of an artifact on a runtime.
  /// [discovery] Describes when a resource was discovered.
  /// [dsseAttestation] Describes an attestation of an artifact using dsse.
  /// [envelope] https://github.com/secure-systems-lab/dsse
  /// [image] Describes how this resource derives from the basis in the associated note.
  /// [noteName] Immutable. The analysis note associated with this occurrence, in the form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a filter in list requests.
  /// [package] Describes the installation of a package on the linked resource.
  /// [project] Optional.
  /// [remediation] A description of actions that can be taken to remedy the note.
  /// [resourceUri] Immutable. A URI that represents the resource for which the occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc` for a Docker image.
  /// [sbomReference] Describes a specific SBOM reference occurrences.
  /// [upgrade] Describes an available package upgrade on the linked resource.
  /// [vulnerability] Describes a security vulnerability.
  OccurrenceArgs({
    AttestationOccurrence? attestation,
    BuildOccurrence? build,
    ComplianceOccurrence? compliance,
    DeploymentOccurrence? deployment,
    DiscoveryOccurrence? discovery,
    DSSEAttestationOccurrence? dsseAttestation,
    Envelope? envelope,
    ImageOccurrence? image,
    required String noteName,
    PackageOccurrence? package,
    String? project,
    String? remediation,
    required String resourceUri,
    SBOMReferenceOccurrence? sbomReference,
    UpgradeOccurrence? upgrade,
    VulnerabilityOccurrence? vulnerability,
  })  : attestation =
            pulumi.Input.asOptionalInput<AttestationOccurrence>(attestation),
        build = pulumi.Input.asOptionalInput<BuildOccurrence>(build),
        compliance =
            pulumi.Input.asOptionalInput<ComplianceOccurrence>(compliance),
        deployment =
            pulumi.Input.asOptionalInput<DeploymentOccurrence>(deployment),
        discovery =
            pulumi.Input.asOptionalInput<DiscoveryOccurrence>(discovery),
        dsseAttestation =
            pulumi.Input.asOptionalInput<DSSEAttestationOccurrence>(
                dsseAttestation),
        envelope = pulumi.Input.asOptionalInput<Envelope>(envelope),
        image = pulumi.Input.asOptionalInput<ImageOccurrence>(image),
        noteName = pulumi.Input.asInput<String>(noteName),
        package = pulumi.Input.asOptionalInput<PackageOccurrence>(package),
        project = pulumi.Input.asOptionalInput<String>(project),
        remediation = pulumi.Input.asOptionalInput<String>(remediation),
        resourceUri = pulumi.Input.asInput<String>(resourceUri),
        sbomReference = pulumi.Input.asOptionalInput<SBOMReferenceOccurrence>(
            sbomReference),
        upgrade = pulumi.Input.asOptionalInput<UpgradeOccurrence>(upgrade),
        vulnerability = pulumi.Input.asOptionalInput<VulnerabilityOccurrence>(
            vulnerability);

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
      attestation: map['attestation'] == null
          ? null
          : AttestationOccurrence.fromMap(
              (map['attestation'] as Map).cast<String, dynamic>()),
      build: map['build'] == null
          ? null
          : BuildOccurrence.fromMap(
              (map['build'] as Map).cast<String, dynamic>()),
      compliance: map['compliance'] == null
          ? null
          : ComplianceOccurrence.fromMap(
              (map['compliance'] as Map).cast<String, dynamic>()),
      deployment: map['deployment'] == null
          ? null
          : DeploymentOccurrence.fromMap(
              (map['deployment'] as Map).cast<String, dynamic>()),
      discovery: map['discovery'] == null
          ? null
          : DiscoveryOccurrence.fromMap(
              (map['discovery'] as Map).cast<String, dynamic>()),
      dsseAttestation: map['dsseAttestation'] == null
          ? null
          : DSSEAttestationOccurrence.fromMap(
              (map['dsseAttestation'] as Map).cast<String, dynamic>()),
      envelope: map['envelope'] == null
          ? null
          : Envelope.fromMap((map['envelope'] as Map).cast<String, dynamic>()),
      image: map['image'] == null
          ? null
          : ImageOccurrence.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
      noteName: map['noteName'] as String,
      package: map['package'] == null
          ? null
          : PackageOccurrence.fromMap(
              (map['package'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      remediation:
          map['remediation'] == null ? null : map['remediation'] as String,
      resourceUri: map['resourceUri'] as String,
      sbomReference: map['sbomReference'] == null
          ? null
          : SBOMReferenceOccurrence.fromMap(
              (map['sbomReference'] as Map).cast<String, dynamic>()),
      upgrade: map['upgrade'] == null
          ? null
          : UpgradeOccurrence.fromMap(
              (map['upgrade'] as Map).cast<String, dynamic>()),
      vulnerability: map['vulnerability'] == null
          ? null
          : VulnerabilityOccurrence.fromMap(
              (map['vulnerability'] as Map).cast<String, dynamic>()),
    );
  }
}
