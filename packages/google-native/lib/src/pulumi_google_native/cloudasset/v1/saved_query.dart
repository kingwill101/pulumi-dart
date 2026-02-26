import 'package:pulumi/pulumi.dart';
import 'query_content_response.dart';
import 'saved_query_args.dart';

/// Creates a saved query in a parent project/folder/organization.
/// Auto-naming is currently not supported for this resource.
class SavedQuery extends CustomResource {
  /// The query content.
  late final Output<QueryContentResponse> content;

  /// The create time of this saved query.
  late final Output<String> createTime;

  /// The account's email address who has created this saved query.
  late final Output<String> creator;

  /// The description of this saved query. This value should be fewer than 255 characters.
  late final Output<String> description;

  /// Labels applied on the resource. This value should not contain more than 10 entries. The key and value of each entry must be non-empty and fewer than 64 characters.
  late final Output<Map<String, String>> labels;

  /// The last update time of this saved query.
  late final Output<String> lastUpdateTime;

  /// The account's email address who has updated this saved query most recently.
  late final Output<String> lastUpdater;

  /// The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  late final Output<String> name;

  /// Required. The ID to use for the saved query, which must be unique in the specified parent. It will become the final component of the saved query's resource name. This value should be 4-63 characters, and valid characters are `a-z-`. Notice that this field is required in the saved query creation, and the `name` field of the `saved_query` will be ignored.
  late final Output<String> savedQueryId;
  late final Output<String> v1Id;
  late final Output<String> v1Id1;

  SavedQuery(
    String name, {
    SavedQueryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudasset/v1:SavedQuery',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.content = Output.createUnknown<QueryContentResponse>();
    this.createTime = Output.createUnknown<String>();
    this.creator = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lastUpdateTime = Output.createUnknown<String>();
    this.lastUpdater = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.savedQueryId = Output.createUnknown<String>();
    this.v1Id = Output.createUnknown<String>();
    this.v1Id1 = Output.createUnknown<String>();
  }
}
