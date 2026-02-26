import 'package:pulumi/pulumi.dart';
import 'project_args2.dart';
import 'resource_id_response2.dart';

/// Creates a Project resource. Initially, the Project resource is owned by its creator exclusively. The creator can later grant permission to others to read or update the Project. Several APIs are activated automatically for the Project, including Google Cloud Storage. The parent is identified by a specified ResourceId, which must include both an ID and a type, such as project, folder, or organization. This method does not associate the new project with a billing account. You can set or update the billing account associated with a project using the [`projects.updateBillingInfo`] (/billing/reference/rest/v1/projects/updateBillingInfo) method.
class Project2 extends CustomResource {
  /// Creation time. Read-only.
  late final Output<String> createTime;

  /// The labels associated with this Project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z{0,62}. Label values must be between 0 and 63 characters long and must conform to the regular expression [a-z0-9_-]{0,63}. A label value can be empty. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `"environment" : "dev"` Read-write.
  late final Output<Map<String, String>> labels;

  /// The Project lifecycle state. Read-only.
  late final Output<String> lifecycleState;

  /// The optional user-assigned display name of the Project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project` Read-write.
  late final Output<String> name;

  /// An optional reference to a parent Resource. Supported parent types include "organization" and "folder". Once set, the parent cannot be cleared. The `parent` can be set on creation or using the `UpdateProject` method; the end user must have the `resourcemanager.projects.create` permission on the parent. Read-write.
  late final Output<ResourceIdResponse2> parent;

  /// The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123` Read-only after creation.
  late final Output<String> projectId;

  /// The number uniquely identifying the project. Example: `415104041262` Read-only.
  late final Output<String> projectNumber;

  /// A now unused experiment opt-out option.
  late final Output<bool?> useLegacyStack;

  Project2(
    String name, {
    ProjectArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudresourcemanager/v1beta1:Project',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lifecycleState = registerOutput<String>('lifecycleState');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<ResourceIdResponse2>('parent');
    this.projectId = registerOutput<String>('projectId');
    this.projectNumber = registerOutput<String>('projectNumber');
    this.useLegacyStack = registerOutput<bool?>('useLegacyStack');
  }
}
