// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_types_type_handlers_create.dart';
import 'get_resource_types_type_handlers_delete.dart';
import 'get_resource_types_type_handlers_get.dart';
import 'get_resource_types_type_handlers_list.dart';
import 'get_resource_types_type_handlers_update.dart';

class GetResourceTypesTypeHandlers {
  /// Create operation association information.
  final List<GetResourceTypesTypeHandlersCreate> creates;
  /// Delete operation association information.
  final List<GetResourceTypesTypeHandlersDelete> deletes;
  /// Query operation association information.
  final List<GetResourceTypesTypeHandlersGet> gets;
  /// List operation association information.
  final List<GetResourceTypesTypeHandlersList> lists;
  /// Update operation association information.
  final List<GetResourceTypesTypeHandlersUpdate> updates;

  /// Creates a new [GetResourceTypesTypeHandlers].
  /// [creates] Create operation association information.
  /// [deletes] Delete operation association information.
  /// [gets] Query operation association information.
  /// [lists] List operation association information.
  /// [updates] Update operation association information.
  GetResourceTypesTypeHandlers({
    required this.creates,
    required this.deletes,
    required this.gets,
    required this.lists,
    required this.updates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creates': pulumi.Input.encodeList<GetResourceTypesTypeHandlersCreate, Map<String, dynamic>>(creates, (value) => value.toMap()),
      'deletes': pulumi.Input.encodeList<GetResourceTypesTypeHandlersDelete, Map<String, dynamic>>(deletes, (value) => value.toMap()),
      'gets': pulumi.Input.encodeList<GetResourceTypesTypeHandlersGet, Map<String, dynamic>>(gets, (value) => value.toMap()),
      'lists': pulumi.Input.encodeList<GetResourceTypesTypeHandlersList, Map<String, dynamic>>(lists, (value) => value.toMap()),
      'updates': pulumi.Input.encodeList<GetResourceTypesTypeHandlersUpdate, Map<String, dynamic>>(updates, (value) => value.toMap()),
    };
  }

  factory GetResourceTypesTypeHandlers.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesTypeHandlers(
      creates: pulumi.Input.decodeList<GetResourceTypesTypeHandlersCreate>(map['creates'], (value) => GetResourceTypesTypeHandlersCreate.fromMap((value as Map).cast<String, dynamic>())),
      deletes: pulumi.Input.decodeList<GetResourceTypesTypeHandlersDelete>(map['deletes'], (value) => GetResourceTypesTypeHandlersDelete.fromMap((value as Map).cast<String, dynamic>())),
      gets: pulumi.Input.decodeList<GetResourceTypesTypeHandlersGet>(map['gets'], (value) => GetResourceTypesTypeHandlersGet.fromMap((value as Map).cast<String, dynamic>())),
      lists: pulumi.Input.decodeList<GetResourceTypesTypeHandlersList>(map['lists'], (value) => GetResourceTypesTypeHandlersList.fromMap((value as Map).cast<String, dynamic>())),
      updates: pulumi.Input.decodeList<GetResourceTypesTypeHandlersUpdate>(map['updates'], (value) => GetResourceTypesTypeHandlersUpdate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

