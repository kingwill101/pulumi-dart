import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_workbook_args.dart';
import 'my_workbook_managed_identity_response.dart';
import 'system_data_response.dart';

/// An Application Insights private workbook definition.
///
/// Uses Azure REST API version 2021-03-08.
///
/// Other available API versions: 2015-05-01, 2020-10-20. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:applicationinsights:MyWorkbook deadb33f-8bee-4d3b-a059-9be8dac93960 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/myWorkbooks/{resourceName}
/// ```
class MyWorkbook extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Workbook category, as defined by the user at creation time.
  late final pulumi.Output<String> category;
  /// The user-defined name of the private workbook.
  late final pulumi.Output<String> displayName;
  /// Resource etag
  late final pulumi.Output<Map<String, String>?> etag;
  /// Identity used for BYOS
  late final pulumi.Output<MyWorkbookManagedIdentityResponse?> identity;
  /// The kind of workbook. Choices are user and shared.
  late final pulumi.Output<String?> kind;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// Azure resource name
  late final pulumi.Output<String?> name;
  /// Configuration of this particular private workbook. Configuration data is a string containing valid JSON
  late final pulumi.Output<String> serializedData;
  /// Optional resourceId for a source resource.
  late final pulumi.Output<String?> sourceId;
  /// BYOS Storage Account URI
  late final pulumi.Output<String?> storageUri;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Date and time in UTC of the last modification that was made to this private workbook definition.
  late final pulumi.Output<String> timeModified;
  /// Azure resource type
  late final pulumi.Output<String?> type;
  /// Unique user id of the specific user that owns this private workbook.
  late final pulumi.Output<String> userId;
  /// This instance's version of the data model. This can change as new features are added that can be marked private workbook.
  late final pulumi.Output<String?> version;

  /// Creates a new [MyWorkbook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MyWorkbook]. {@macro pulumi_applicationinsights_my_workbook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MyWorkbook(
    String name, {
    MyWorkbookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:applicationinsights:MyWorkbook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.category = registerOutput<String>('category');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<Map<String, String>?>('etag');
    this.identity = registerOutput<MyWorkbookManagedIdentityResponse?>('identity');
    this.kind = registerOutput<String?>('kind');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String?>('name');
    this.serializedData = registerOutput<String>('serializedData');
    this.sourceId = registerOutput<String?>('sourceId');
    this.storageUri = registerOutput<String?>('storageUri');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeModified = registerOutput<String>('timeModified');
    this.type = registerOutput<String?>('type');
    this.userId = registerOutput<String>('userId');
    this.version = registerOutput<String?>('version');
  }
}
