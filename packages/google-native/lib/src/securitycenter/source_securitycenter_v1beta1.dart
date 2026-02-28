import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_securitycenter_v1beta1_args.dart';

/// Creates a source.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class SourceSecuritycenterV1beta1 extends pulumi.CustomResource {
  /// The description of the source (max of 1024 characters). Example: "Web Security Scanner is a web security scanner for common vulnerabilities in App Engine applications. It can automatically scan and detect four common vulnerabilities, including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in HTTPS), and outdated/insecure libraries."
  late final pulumi.Output<String> description;
  /// The source's display name. A source's display name must be unique amongst its siblings, for example, two sources with the same parent can't share the same display name. The display name must have a length between 1 and 64 characters (inclusive).
  late final pulumi.Output<String> displayName;
  /// The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/sources/{source_id}"
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Creates a new [SourceSecuritycenterV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceSecuritycenterV1beta1]. {@macro pulumi_securitycenter_v1beta1_source_securitycenter_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceSecuritycenterV1beta1(
    String name, {
    SourceSecuritycenterV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1beta1:Source',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
  }
}
