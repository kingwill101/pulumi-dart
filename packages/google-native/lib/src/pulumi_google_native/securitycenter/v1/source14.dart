import 'package:pulumi/pulumi.dart';
import 'source_args3.dart';

/// Creates a source.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Source14 extends CustomResource {
  /// The canonical name of the finding source. It's either "organizations/{organization_id}/sources/{source_id}", "folders/{folder_id}/sources/{source_id}", or "projects/{project_number}/sources/{source_id}", depending on the closest CRM ancestor of the resource associated with the finding.
  late final Output<String> canonicalName;

  /// The description of the source (max of 1024 characters). Example: "Web Security Scanner is a web security scanner for common vulnerabilities in App Engine applications. It can automatically scan and detect four common vulnerabilities, including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in HTTPS), and outdated or insecure libraries."
  late final Output<String> description;

  /// The source's display name. A source's display name must be unique amongst its siblings, for example, two sources with the same parent can't share the same display name. The display name must have a length between 1 and 64 characters (inclusive).
  late final Output<String> displayName;

  /// The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/sources/{source_id}"
  late final Output<String> name;
  late final Output<String> organizationId;

  Source14(
    String name, {
    SourceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1:Source',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.canonicalName = registerOutput<String>('canonicalName');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
  }
}
