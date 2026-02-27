import 'package:pulumi/pulumi.dart' hide Config;
import 'collection_override_response2.dart';
import 'credential_response2.dart';
import 'operation_response4.dart';
import 'options_response3.dart';
import 'type_provider_args2.dart';
import 'type_provider_label_entry_response2.dart';

/// Creates a type provider.
class TypeProvider2 extends CustomResource {
  /// Allows resource handling overrides for specific collections
  late final Output<List<CollectionOverrideResponse2>> collectionOverrides;

  /// Credential used when interacting with this type.
  late final Output<CredentialResponse2> credential;

  /// List of up to 2 custom certificate authority roots to use for TLS authentication when making calls on behalf of this type provider. If set, TLS authentication will exclusively use these roots instead of relying on publicly trusted certificate authorities when validating TLS certificate authenticity. The certificates must be in base64-encoded PEM format. The maximum size of each certificate must not exceed 10KB.
  late final Output<List<String>> customCertificateAuthorityRoots;

  /// An optional textual description of the resource; provided by the client when the resource is created.
  late final Output<String> description;

  /// Descriptor Url for the this type provider.
  late final Output<String> descriptorUrl;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> insertTime;

  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
  late final Output<List<TypeProviderLabelEntryResponse2>> labels;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The Operation that most recently ran, or is currently running, on this type provider.
  late final Output<OperationResponse4> operation;

  /// Options to apply when handling any resources in this service.
  late final Output<OptionsResponse3> options;
  late final Output<String> project;

  /// Self link for the type provider.
  late final Output<String> selfLink;

  TypeProvider2(
    String name, {
    TypeProviderArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:deploymentmanager/v2beta:TypeProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.collectionOverrides =
        registerOutput<List<CollectionOverrideResponse2>>(
            'collectionOverrides');
    this.credential = registerOutput<CredentialResponse2>('credential');
    this.customCertificateAuthorityRoots =
        registerOutput<List<String>>('customCertificateAuthorityRoots');
    this.description = registerOutput<String>('description');
    this.descriptorUrl = registerOutput<String>('descriptorUrl');
    this.insertTime = registerOutput<String>('insertTime');
    this.labels =
        registerOutput<List<TypeProviderLabelEntryResponse2>>('labels');
    this.name = registerOutput<String>('name');
    this.operation = registerOutput<OperationResponse4>('operation');
    this.options = registerOutput<OptionsResponse3>('options');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
