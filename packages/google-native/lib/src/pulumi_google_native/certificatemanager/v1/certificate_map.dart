import 'package:pulumi/pulumi.dart';
import 'certificate_map_args.dart';
import 'gclb_target_response.dart';

/// Creates a new CertificateMap in a given project and location.
class CertificateMap extends CustomResource {
  /// Required. A user-provided name of the certificate map.
  late final Output<String> certificateMapId;

  /// The creation timestamp of a Certificate Map.
  late final Output<String> createTime;

  /// One or more paragraphs of text description of a certificate map.
  late final Output<String> description;

  /// A list of GCLB targets that use this Certificate Map. A Target Proxy is only present on this list if it's attached to a Forwarding Rule.
  late final Output<List<GclbTargetResponse>> gclbTargets;

  /// Set of labels associated with a Certificate Map.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// A user-defined name of the Certificate Map. Certificate Map names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*`.
  late final Output<String> name;
  late final Output<String> project;

  /// The update timestamp of a Certificate Map.
  late final Output<String> updateTime;

  CertificateMap(
    String name, {
    CertificateMapArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:certificatemanager/v1:CertificateMap',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateMapId = registerOutput<String>('certificateMapId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.gclbTargets = registerOutput<List<GclbTargetResponse>>('gclbTargets');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
