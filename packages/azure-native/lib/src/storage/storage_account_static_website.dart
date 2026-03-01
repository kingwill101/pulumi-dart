import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_static_website_args.dart';

/// Enables the static website feature of a storage account.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:storage:StorageAccountStaticWebsite myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/staticWebsite
/// ```
class StorageAccountStaticWebsite extends pulumi.CustomResource {
  /// The name of the container to upload blobs to.
  late final pulumi.Output<String> containerName;
  /// The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.
  late final pulumi.Output<String?> error404Document;
  /// The webpage that Azure Storage serves for requests to the root of a website or any sub-folder. For example, 'index.html'. The value is case-sensitive.
  late final pulumi.Output<String?> indexDocument;

  /// Creates a new [StorageAccountStaticWebsite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageAccountStaticWebsite]. {@macro pulumi_storage_storage_account_static_website_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageAccountStaticWebsite(
    String name, {
    StorageAccountStaticWebsiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:StorageAccountStaticWebsite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerName = registerOutput<String>('containerName');
    this.error404Document = registerOutput<String?>('error404Document');
    this.indexDocument = registerOutput<String?>('indexDocument');
  }
}
