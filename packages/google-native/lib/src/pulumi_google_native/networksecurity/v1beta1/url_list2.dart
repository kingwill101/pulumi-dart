import 'package:pulumi/pulumi.dart';
import 'url_list_args2.dart';

/// Creates a new UrlList in a given project and location.
class UrlList2 extends CustomResource {
  /// Time when the security policy was created.
  late final Output<String> createTime;

  /// Optional. Free-text description of the resource.
  late final Output<String> description;
  late final Output<String> location;

  /// Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  late final Output<String> name;
  late final Output<String> project;

  /// Time when the security policy was updated.
  late final Output<String> updateTime;

  /// Required. Short name of the UrlList resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "url_list".
  late final Output<String> urlListId;

  /// FQDNs and URLs.
  late final Output<List<String>> values;

  UrlList2(
    String name, {
    UrlListArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:UrlList',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.urlListId = Output.createUnknown<String>();
    this.values = Output.createUnknown<List<String>>();
  }
}
