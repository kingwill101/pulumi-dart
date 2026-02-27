import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_list_args.dart';

/// UrlList proto helps users to set reusable, independently manageable lists of hosts, host patterns, URLs, URL patterns.
///
///
/// To get more information about UrlLists, see:
///
/// * [API documentation](https://cloud.google.com/secure-web-proxy/docs/reference/network-security/rest/v1/projects.locations.urlLists)
/// * How-to Guides
/// * Use UrlLists
///
/// ## Example Usage
///
/// ### Network Security Url Lists Basic
///
///
///
/// ### Network Security Url Lists Advanced
///
///
///
///
/// ## Import
///
/// UrlLists can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/urlLists/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, UrlLists can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/urlList:UrlList default projects/{{project}}/locations/{{location}}/urlLists/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/urlList:UrlList default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/urlList:UrlList default {{location}}/{{name}}
/// ```
class UrlList extends pulumi.CustomResource {
  /// Output only. Time when the security policy was created.
  /// A timestamp in RFC3339 UTC 'Zulu' format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: '2014-10-02T15:01:23Z' and '2014-10-02T15:01:23.045123456Z'
  late final pulumi.Output<String> createTime;

  /// Free-text description of the resource.
  late final pulumi.Output<String?> description;

  /// The location of the url lists.
  late final pulumi.Output<String> location;

  /// Short name of the UrlList resource to be created.
  /// This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. 'urlList'.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Output only. Time when the security policy was updated.
  /// A timestamp in RFC3339 UTC 'Zulu' format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: '2014-10-02T15:01:23Z' and '2014-10-02T15:01:23.045123456Z'.
  late final pulumi.Output<String> updateTime;

  /// FQDNs and URLs.
  late final pulumi.Output<List<String>> values;

  UrlList(
    String name, {
    UrlListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/urlList:UrlList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
    this.values = registerOutput<List<String>>('values');
  }
}
